A (fast paced) introduction - Jacob Kaplan-Moss
***********************************************

Links
=====

- http://toys.jacobian.org/presentations/2008/pycon/tutorial/

Notes
=====

- *Ruby on Rails* is not Ruby.  They have done lots of low level changes.
- **Project**

  - Sample:

    www.cheeserater.com

    http://github.com/jacobian/cheeserater/tree

  - ``manage.py`` - command line interface to django for this project.
  - ``settings.py`` - all the settings for your project.  Don't try to import
    anything from Django into your ``settings.py`` file.

    ``manage.py diff-settings`` - will list everything which is different to
    the default settings.

    http://docs.djangoproject.com/en/dev/ref/django-admin/

  - Set-up the database settings, then run ``manage.py syncdb``.

- **Apps**: A collection of models and views.

  Each app (or piece in the puzzle) should be useable on it's own.
  e.g. http://code.google.com/p/django-voting/ and ``django.contrib.auth``.

  - ``manage.py startapp packages``
  - ``INSTALLED_APPS``: is how Django knows what you want to use on this
    particular site.

- **Models**

  - SQL is tough.
  - SQL knows no version control (a battle we have to fight far too many times.
  - SQL is very repetitive.
  - ``python`` is fun!
  - There are three very good *schema evolution tools*.  We hope they are
    getting together.
  - ``inspect_db`` - to generate models from an existing database.
  - You can have inherited models (in Django 1.0).
  - Models are just normal Django classes.
  - ``manage.py shell``, will set-up your database models so you can try them
    out from the command line.
  - Model Metadata

    - With Django use ``__unicode__`` rather than ``__str__``:

      ::

        def __unicode__(self):
            return self.name

    - Inner class ``Meta``:

      ::

        class Package(models.Model):
            ...
            class Meta:
                ordering = ["name"]
                verbose_name = "cheeseshop package"
                verbose_name_plural = "cheeseshop packages"

      Can also specify other more obscure settings e.g. an alias for the actual
      table name.

  - A slug is the last part of the url:

    ::

      class Topic(models.Model):
         slug = models.Slug(

  - Foreign Key

    ::

      class Category(models.Model):
         topic = models.ForeignKey(Package, related_name = "categories")

      license = Topic.objects.get(name = "License")
      license.categories.all()

    Note: These two lines produce exactly the same result (and work in exactly
    the same way):

    ::

      p.categories.all()
      Category.objects.filter(package=p)

  - The database is only hit when it needs to be.
  - Filter

    ::

      packages = Package.objects.filter(
          categories__topic__name = "Natural Language",
          categories__value__contains = "Spanish"
          categories__topic__name = "License",
          categories__value__contains = "BSD"

    ...or...

    ::

      packages = Package.objects.filter(
          categories__topic__name = "Natural Language",
          categories__value__contains = "Spanish"
      )

      packages = packages.filter(
          categories__topic__name = "License",
          categories__value__contains = "BSD"
      )

      >>> packages

- Django Admin

  Has object level, but not finer grained permissions built in.

  To get a basic admin interface:

  - Activate...

    ::

      from django.contrib import admin
      from cheeserater.packages.models import Package
      admin.site.register(Package)

  - Options:

    ::

      class PackageAdmin(admin.ModelAdmin):
          list_display = ('name', 'version', 'summary')
          search_fields = ...
      admin.site.register(Package, PackageAdmin)

  - Install the App:

    ::

      INSALLED_APPS = (
         "django.contrib.admin

    ::

      admin.autodiscover()
      urlpatterns = patterns('',
        (r'^admin/(.*)', admin.site.root,
      )

    ::

      syncdb

  - (Proper) audit trail thing... which has been contributed...
  - In-lines, let you edit related content with their parent on the same page.

- Views

  Django doesn't exactly implement MVC.  *Django developers are a bunch of
  amateurs... not software development*.

  - Model represents the data (almost exactly the same as MVC).  View is what
    presents the data to the user.  In Django the template is responsible for
    presentation to the user.  ``html`` and python do not go well together.
    Django wants to separate the logic of gathering data for presentation and
    actually presenting the data.  Can use different html for different
    devices.  You can say that what Django calls a view, could be descibed as a
    controller... and the template as a view.

    The view is NOT responsible for presenting the data visually.

  - We don't want the URL to expose internal details of our application.

    We want nice clean URL's like this ``/packages/reportlab/`` (in this
    example ``reportlab`` is the slug).

    We don't want to use ``mod_rewrite``... it is *hard* (*always seem to end
    up introducing bugs*)...

    We should design our URLs as part of the UI of our application.

    - To define the URLs:

      ::

        ROOT_URLCONF = "cheeserater.urls"
        urlpatterns = patterns('',
            ...
            ('^packages/$', package_list),
            ('^packages/(?P<package_name>.*)/$', package_detail),

    - To save us repeating the ``packages``, use prefixes:

      ::

        # cheeserater.packages.urls
        urlpatterns = patterns('',
            ...
            ('^$', package_list),
            ('^(?P<package_name>.*)/$', package_detail),

        # cheeserater.urls
        urlpatterns = patterns('',
            ...
            ('^packages/', include('cheeserater.packages.urls'),

  - From here, the view can do whatever it wants...

    - A first view (3 requirements):

      ::

        from django.http import HttpResponse

        # (1) Has to be a callable and (2) take a request object:
        def package_list(request):
            # (3) Must return a response object.
            return HttpResponse("This is the package list!")

      Can build an html string in the method and return it in the
      ``HttpResponse`` (nasty though...)

    - Using the template system:

      ::

        t = template_loader.get_template(
        c = Context(

      ...and something else ..
      ...shortcut is ``render_to_response``.

    - More complex view:

      ::

        def package_detail(request, package_name):
            name = unquote(package_name)
            package = get_object_or_404(Package, name = name)
            return render_to_response(

      ``get_object_or_404`` tries to do a lookup... if the object does not
      exist, it raises an ``Http404...`` expception...

    - There are generic views...

      We will spend most of our time developing views.

  - Templates

    (Big change between 0.96 and 1.0 - variables are automatically escaped).

    - The magic dot: ``p.name`` will do: ``p["name"]``, ``p.name`` or
      ``p.name()``.
    - Filters: (like Unix pipes) ``package_list|length``, ``p.name|urlencode``.

      Filter cannot take arguments e.g. ``text|truncatewords:"30"``

      You can chain filters together.

      Fairly easy to write your own.

    - Tags: ``\{%``, ``for``, ``cycle``, etc...
    - Template inheritance:

      - Start with the base template which contains blocks which child
        templates will come and fill.  The blocks can contain default content.
      - When I create my child templates, I extend a base template and then
        just define the blocks.

        The ``extends`` tag must be the first thing in the template.

        The order of the blocks in the child template make no difference at
        all.

        It is possible to use variables to dynamically control the base
        template.

        Think of the parent and child templates in the same was as we use class
        inheritance.

        There is an include tag, for when you need it (repeating content).

        ``block.super`` to include stuff which the parent template has already
        included in the block.

      This is really powerful, it allows you to change the design of your
      whole site just be re-designing the base template.

      A couple of tips:

      - More blocks are almost always better....  it doesn't matter if it is
        never used.
      - If you're duplicating content you are probably missing a block.

  - Testing

    - Test your *beep* code.
    - *Tests are the Programmer's stone transmuting fear into boredom*.
      Kent Beck.

      The difference is you can deploy a new feature and go home....  If you
      don't have good unit tests, you will be watching your error logs in fear.

      Hardcore TDD

    - Titus Brown - *I don't do test driven development.  I do stupidity driven
      testing... I wait until I do something stupid, and*...

      Don't let your test suite break - thinking, "I'll go back and fix this
      later."

      Once you have signed the testing contract you must live by it.

    - Testing Django

      - Django uses Doctests and has a built in unit test library.

        Triple quoted interactive interpreter session.  Good way to write
        regression tests (for code which is already working).

        To run Doctests *and* unit tests:

        ::

          manage.py test

      - Django has fixtures - data which can be loaded and re-loaded during
        tests.
      - There is a test client which can simulate http requests to your views.
      - There is an email capture system.

- What else you got?

  - Forms... the best form handling system in any language right now.
  - Sessions.
  - Custom template tags and filters.
  - Authentication/authorization
  - Caching
  - Internationalization (most people use ``utf8``)
  - Syndication
  - GIS (GeoDjango)
  - AJAX... Django ships with simple stuff built in... a view can return some
    JSON or YAML.

- http://effbot.org, Richard Lunt... go and read about ``PYTHON_PATH``.
- Form media... required media attributes... reverse URL resolution.
- Check out ``xmlrpclib`` e.g.

  ::

    s = xmlrpclib.Server(CHEESESHOP)
    for name in s.list_packages():
        versions = s.package_releases(name)
        info = s.release_data(name, versions[-1])

- After creating models, run ``manage.py validate``, which will check for
  common errors in your models - then ``manage.py syncdb``.

  When developing, you can use the ``reset`` command to drop all the database
  tables.  To upgrade production databases, you could make the changes by
  hand... or perhaps use http://code.google.com/p/django-evolution/,
  or http://south.aeracode.org/

- Database isolation levels are controlled by the database...

- ``ipython`` - you should install it!!!

