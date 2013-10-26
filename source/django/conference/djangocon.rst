DjangoCon.eu
************

Eric Florenzano
===============

- If you don't need web sockets, then don't.  Short polling is good in most
  cases.
- It is still early days for server side socket IO for python e.g. Tornado.
  Easier to use a product like this, but you don't get so much control.
- For real time web stuff, check out the following: long poll, eventlib,
  pub-sub, multi-part long polling and web sockets.
- http://www.pubnub.com/ was mentioned on Twitter.

Mozilla
=======

- https://github.com/andymckay/presentations/
- https://github.com/andymckay
- https://github.com/jbalogh

Notes
-----

- Redis ``SADD`` to solve problems which are difficult in ``memcached``.
- They use Jinja2 rather than Django templating.  This is mostly related to
  the more succinct syntax for internationalisation.  They use a couple of
  projects called *jingo*...
- Check out *far future expires* and cache prefix (in Django 1.3).

Looks really useful
-------------------

- `django-qunit`_ official Django contrib fork...
- Cache Machine provides automatic caching and invalidation for Django models
  through the ORM.
  https://github.com/jbalogh/django-cache-machine
- Security checking:
  https://github.com/carljm/django-secure
- Has good unit tests, and produces clean HTML:
  https://github.com/jsocol/bleach
- ref Jenkins and JavaScript testing:
  https://github.com/kumar303/jstestnet
- Code checking using pep8 and pyflakes:
  http://pypi.python.org/pypi/flake8/

Interesting
-----------

- Performance monitoring
  https://github.com/jbalogh/zamboni/blob/master/apps/amo/middleware.py#L162
- Use graphite and ``statsd`` for monitoring.
- Use
  https://docs.djangoproject.com/en/dev/ref/models/querysets/#select-related
  or possible better
  https://github.com/simonw/django-queryset-transform/
- Use Zeus load balancer.
  http://www.zeus.com/community
- Feature flipper for Django:
  http://pypi.python.org/pypi/django-waffle/
- Django formset that's a bit quieter (for errors):
  http://pypi.python.org/pypi/django-quieter-formset/
- Record errors on your website.  I think this summarises emails, so you get
  one email per error rather than hundreds.  Apparently there is a version
  which doesn't depend on Google AppEngine:
  https://github.com/andymckay/arecibo

Probably not relevant
---------------------

- Skeleton (alot of stuff specific to Mozilla):
  https://github.com/mozilla/playdoh

Packaging
=========

How I learned to stop worrying and love python packaging - Jannis Leidel
@enn_io

- Link the long description to the ``README.rst`` file.  Make sure you use the
  ``codecs`` library when doing this.
- Static files need to be included in ``package_data`` *and* ``MANIFEST.in``.
- Install binary packages globally using your OS package manager e.g. PIL and
  database adaptors.  For all other libraries use ``virtualenv``.
- Create your own package index using the Apache ``DirectoryIndex`` or
  http://pypi.python.org/pypi/chishop.

  Then can use configuration like this:

  ::

    pip install -f http://localhost/dists/
    pip install -i http://pypi.corp.local/

  Use ``~/pip/pip.conf``.

  In ``.pydistutils.cfg``:

  ::

    [sdist]
    dist-dir=/var/www/dists

- In the future will be using ``distutils2`` (called ``packaging`` in python
  3). *In fact, it sounds like we can use it now*!!!

  - ``setup.cfg`` replaces ``setup.py``.
  - ``pysetup`` is replacing ``pip`` (I think).
  - Use ``pysetup create``
  - ``pysetup generate-setup`` will generate backwards compatible files.

  - In ``site-packages``:

    - ``RECORD`` is a list of installed files.
    - ``RESOURCES`` is a list of non-python files.

  - Read *Hitchhiker's Guide to Packaging*:
    http://guide.python-distribute.org/

Django and PyPy
===============

- I like ``gunicorn``, *you can use whatever you like*.
- https://irccloud.com/

CMS Panel
=========

- Fiber looks perfect for adding CMS functionality to existing CMS
  applications:
  https://github.com/ridethepony/django-fiber
  http://www.leukeleu.nl/wie_zijn_we/dennis_bunskoek

Responsive Web Design
=====================

Brilliant talk, see :download:`../misc/rwd_djangocon_talk.pdf`

- http://www.alistapart.com/articles/responsive-web-design/

- Use CSS3 media queries.

  - Later rules have a higher precedence.
  - Start by targetting the desktop, then refine to other devices.
  - http://mediaqueri.es/
  - Main problem is large images (although you can set max width to 100%).

- Solution: Use http://compass-style.org and http://sass-lang.com.

  - Stick this in ``virtualenv`` ``postactivate`` script:

    ::

      export GEM_HOME="$VIRTUAL_ENV/gems"
      export GEM_PATH=""

  - Then install the framwork:

    ::

      gem install compass
      gem install compass-less-plugin

    http://lessframework.com
    https://github.com/willhw/compass-less-plugin

  - Then use *More is Less*: https://gist.github.com/1009952
  - Messy way to organise project:

    ::

      /static        # in STATICFILES_DIRS
      /static_root   # STATIC_ROOT

    ::

      compass create -r less foo --using less
      mv foo/sass sass
      mv foo/config.rb .
      rm -rf foo

    In future will be able to use http://code.google.com/p/django-compressor/

  - **Sample project here**:
    https://github.com/idangazit/rwd_example
  - Then buy @carljm a beer!

  The above ideas are not *the only way*.  Sometimes a dedicated mobile site
  will still be the best.  Responsive patterns could be applied just to some
  screens on a site.

- Feedback

  - For testing CSS: https://github.com/bfirsh/needle
  - FireBug has a FireSAAS tool for debugging the CSS.

Lightning Talks
===============

- I like this one:
  http://django-rest-framework.org/
- Clever idea to modify Django forms in the template.  This GSOC project:
  https://github.com/gregmuellegger/django-form-rendering-api
  by @gregmuellegger
- @natea has an interesting commercial product for deploying Django
  applications very quickly:
  http://djangozoom.com/

BitBucket
=========

Lessons

- Stay idiomatic:  Easy to get people to work for you.  Simple upgrades.
- Things change.  Try to avoid vendor lock-in.  Don't use home brew.
- Decisions: Linux and Django.  Everything else is open ended.
- Open Source - Alot of really well done stuff:

  - Celery
  - South
  - http://pypi.python.org/pypi/django-socialregistration
  - http://code.google.com/p/django-compressor/
  - https://github.com/ericholscher/django-kong

  Give back to the community (other people find bugs for you):

  - https://bitbucket.org/jespern/django-piston/wiki/Home
  - http://pypi.python.org/pypi/dogslow

- Be transparent and humble.

Continuous Integration and Deployment
=====================================

http://prezi.com/

- All tests run on every commit.
- If a developer touches existing code, they must write unit tests first.  All
  new code must have unit tests.
- Deploy to staging on every commit.  Testers can roll-back if they want to.
- Some tools:

  - https://github.com/kumar303/jstestnet
  - http://pypi.python.org/pypi/django-jenkins
  - https://github.com/disqus/gargoyle (for features which take more than one
    day to write).

- In future would like:

  - Dashboard
  - One-click deploy.
  - Use sentry/arecibo.

unjoinify
=========

- https://github.com/gasman/django-unjoinify
- Another library trying to solve the same problem:
  https://github.com/simonw/django-queryset-transform/

Celery
======

@keimlink

- Why use a task queue?  Decouple, Async, Scale, replace cron.
- Celery is written in python and can use RabbitMQ, NoSQL, Redis or Ghetto
  Queue (not recommended).
- Until 1.06 was using Django ORM.  Since 2.0 it uses SQLAlchemy.  To use the
  Django ORM, install the ``django-celery`` package.
- Install

  ::

    pip install celery

- Dependencies:

  - http://pypi.python.org/pypi/kombu/
  - amqplib - Python AMQP client
  - anyjson - A uniform JSON API

- Setting up Rabbit MQ:

  ::

    $ rabbitmqctl add_user myuser mypassword
    $ rabbitmqctl add_vhost myvhost
    $ rabbitmqctl set_permissions -p myvhost myuser ".*" ".*" ".*"

- Python Task

  ::

    # tasks.py
    from celery.task import task

    @task
    def add(x, y):
        return x + y

- Python Task Configuration

  ::

    # celeryconfig.py
    BROKER_HOST = "localhost"
    BROKER_PORT = 5672
    BROKER_USER = "myuser"
    BROKER_PASSWORD = "mypassword"
    BROKER_VHOST = "myvhost"
    CELERY_RESULT_BACKEND = "amqp"
    CELERY_IMPORTS = ("tasks", )

- Python Task Execution

  ::

    >>> from tasks import add
    >>> result = add.delay(1, 2)
    >>> result.ready()
    False
    $ celeryd --loglevel=INFO
    >>> result.get()
    3
    >>> result.result
    3
    >>> result.successful()
    True

- Django

  - Install Celery for Django

    ::

      $ pip install django-celery

  - Django Task

    ::

      # blog/tasks.py
      @task
      def spam_filter(comment_id, remote_addr=None):
          logger = spam_filter.get_logger()
          logger.info("Running spam filter for comment %s" % comment_id)
          comment = Comment.objects.get(pk=comment_id)
          current_domain = Site.objects.get_current().domain
          akismet = Akismet(settings.AKISMET_KEY, "http://%s" % current_domain)
          if not akismet.verify_key():
              raise ImproperlyConfigured("Invalid AKISMET_KEY")
          is_spam = akismet.comment_check(user_ip=remote_addr,
              comment_content=comment.comment,
              comment_author=comment.name,
              comment_author_email=comment.email_address)
          if is_spam:
              comment.is_spam = True
              comment.save()
      return is_spam

   - Django Task Configuration

     ::

       # settings.py
       INSTALLED_APPS += ("djcelery", )

       import djcelery
       djcelery.setup_loader()

       BROKER_HOST = "localhost"
       BROKER_PORT = 5672
       BROKER_USER = "myuser"
       BROKER_PASSWORD = "mypassword"
       BROKER_VHOST = "myvhost"

       $ python manage.py syncdb
       $ python manage.py celeryd -l info

- Webhooks

  ::

    # POST
    >>> from celery.task.http import URL
    >>> res = URL("http://example.com/multiply").get_async(x=10, y=10)
    >>> res.get() # {"status": "success", "retval": 100}
    100
    # GET
    >>> from celery.task.http import HttpDispatchTask
    >>> url = "http://example.com/multiply"
    >>> res = HttpDispatchTask.delay(url, method="GET", x=10, y=10)
    >>> res.get() # {"status": "success", "retval": 100}
    100

- Links

  - http://celeryproject.org/
  - http://www.rabbitmq.com/
  - http://github.com/ask
  - http://pypi.python.org/pypi/celery
  - http://pypi.python.org/pypi/django-celery
  - http://pypi.python.org/pypi/celerymon

EightSpaces - Reusable Apps
===========================

@vanschelven

- http://www.legalsense.nl/

- (For me) ``pk`` is a nice parameter name for ``urls.py``
- Can use ``from .models import Matter, Client`` for a direct link to the
  model.
- Check out the Django app refactor branch.  This is a class based app idea.

Core Developer Panel Discussion
===============================

- Would like to allow model validation on save.
- Would like help tidying comments, data browse, query and serialisation.
- Good third party apps: South, Debug Toolbar, django-registration,
  django-secure, https://github.com/brutasse/django-le-social, SORL.
- Major weakness of Django is now the social side i.e. which developers are
  near me.  What apps do they like.
- For real time web stuff, perhaps Django is overkill.  For python solutions
  to this problem, see ``eventlet``.
- Would like to improve translation, serialisation, schema update, client side
  logic, make tests faster.
- Open source is not a resource of volunteers to exploit - you need to give
  back.

Multilingual using ORM
======================

This project is still in Alpha:

- http://pypi.python.org/pypi/django-nani

Best alternative to this is to create a second table containing the
translations and hand-write the Django to get the correct text for a page.

Lightning Talks
===============

- http://www.pomodorotechnique.com/
- https://github.com/zacharyvoase/django-qmixin
- http://www.dajaxproject.com/
- https://github.com/bfirsh/needle
- https://github.com/evildmp/Arkestra
- http://skillsapp.com/apply/position/skills/djangocon-data-collection/
- @holdenweb

Impact of Django
================

Armin Ronacher

@mitsuhiko

Community
---------

Builds trust:

- Strong leadership
- Reasonable backwards compatibility
- Lots of testing.

Bad
---

- ``settings.py``: Too late to change, but the new version of Celery deals
  with the problem correctly i.e. use a class which contains settings.  You
  can create an instance of this class and pass it around (as Django does with
  the ``request`` object.  This allows simple unit testing because you can
  create separate instances of the settings.
- Magic: Import by name and expecting to find files in a particular location
  e.g. template tags.

Other
-----

- (For me), sounds like the BSD licence is good.
- To manage *approved* extensions (and so everything doesn't have to go into
  core), they could be added to the Django testing infrastructure.

Building API's for mobile
=========================

- Should not use simple CRUD based REST services for mobile apps: you might
  only get one chance to send data to the devices (because of intermittent
  connections).  You should send hierarchical data i.e. all the data needed
  by the basic application.  Add to this unrelated data e.g. leaderboards and
  pre-calculated data (so the device doesn't have to do the work.
- They used https://github.com/toastdriven/django-tastypie

  - Override ``post_list`` in ``api.py`` to build the hierarchical data.
  - For auth, ``tastypie`` uses ``Meta``.  Override ``get_object_list`` to
    filter the data.

- Error codes:

  - Never return HTML to the device e.g. Django 500 error page.  A better
    approach is to catch exceptions and errors and return the code and message
    as JSON data.  Do this in ``wrap_view`` in ``resources.py``.

- Grab media when needed - don't send it all.  The exception to this, is to
  give the user something to look at when they first start the app.
- Start the project by writing an API doc.  The developer of the mobile app
  does not want specs changing after starting work.
- For push notifications on the iPhone, use http://urbanairship.com/.  Sounds
  like it will be difficult to get Apple approval for this and SSL is awkward
  to get sorted.
- Cannot understand why more apps are not built using HTML5 and jQuery mobile.
  These apps feel like native apps, and the offline storage makes this
  possible.

Best and Worst of Django's Core
*******************************

@alex_gaynor

http://alexgaynor.net/

- Ticket https://code.djangoproject.com/changeset/14507 is an almost perfect
  patch i.e. less code, more features, elegant, well documented, tested etc.
- For unit testing email (``locmem``):
  https://docs.djangoproject.com/en/1.3/topics/email/#in-memory-backend
- The ``smartif`` tag was a big improvement:
  https://code.djangoproject.com/browser/django/trunk/django/template/smartif.py
- Code tends to reflect the complexity of the problem it solves.
- Don't make code more complex then the problem is solves.

Django on Rails
===============

http://zacharyvoase.com/

@zacharyvoase

- Rails-style Resource-Oriented Architecture for Django:
  https://github.com/zacharyvoase/dagny
- Django template constraints are really helpful in the end.  They force you
  to put logic in the correct places.
- I should check out http://www.w3.org/TR/webarch/
- *If I ever have to use code completion, then I think there must be something
  wrong*.
- Class based generic views are an alternative to ``dagny`` if they are
  suitable for your use case.

Deploying at an unusual scale
=============================

@andrewgodwin

http://www.ep.io/

- http://www.zeromq.org/ (is not a queue)!

  - Is a socket kind of thing - very flexible.
  - Used for logging (``PUSH``/``PULL``).
  - This is used for sending commands around the system e.g. re-start a
    server.
  - Good idea to keep the *target state* of a service in a central store e.g.
    Redis, so that if a command fails (e.g. an exception is thrown), then it
    can be retried intelligently.

- http://squashfs.sourceforge.net/ (read only filesystem).
- PostgreSQL 9 (only).

 - Use the *warm-standby* feature for redundancy.

- Use Django ORM extensively in the background.
- WSGI
- Redis for key/value.

  - Use ``SLAVEOF`` for redundancy.

- MongoDB soon for document style storage.
- Backup.  Use ``btrfs`` (http://btrfs.wiki.kernel.org/) for consistent
  snapshots.  ``rsync`` is not enough.  Note: Should not have access to
  backups from servers in case someone gets onto the server.
- http://gunicorn.org/ small, lightweight, fast and supports long running
  requests.
- nginx: lightweight and very fast.

  - Note: nginx does not support HTTP 1.1 so cannot be used as a load balancer
    for long running requests.

- Load balancing: no longer use HAProxy because it doesn't scale well to 1000s
  of applications (Sounds like http://haproxy.1wt.eu/ would be fine for us
  though)!
- Celery using Redis as the message server.
- Redundancy is good.  Double redundancy is even better.
- Always expect the worst.
- The more backups the better - and historical backups - and a restore policy.
- *Your real problems will emerge later - don't over optimise up front*.
- http://www.dotcloud.com/ (competitor) also do a good job.

Taming runtime dynamic models
=============================

https://github.com/willhardy/dynamic-models

- Monitor wind using http://www.ammonit.com/ data loggers.
- *'_' means, don't do this*.

Scalability Panel
=================

- Break tasks into several smaller tasks i.e. if they take more than one
  second e.g. SMTP and external HTTP calls can take longer.
- Make sure to put a timeout on external HTTP calls.
- Get used to having and using a queue - even for a small site.
- Think about how you could de-normalise data.  Don't do the work until you
  have a problem, but make sure you have a plan.
- Abstract early and expect things to change.
- Use https://github.com/etsy/statsd/, Munin, Nagios (check the configuration
  so it works for you), Cacti, https://github.com/ojii/django-kong and
  http://www.opennms.org/
- Setup logging immediately you start a project.
- Would love to have something like this
  http://sourceforge.net/projects/metrics/
  available in Django/python.
- http://www.puppetlabs.com/puppet/introduction/ is *awesome*/*alright*.
- Django ORM:

  - ``.raw`` has helped:
    https://docs.djangoproject.com/en/1.3/topics/db/sql/#performing-raw-queries
  - Better to write several separate ORM calls rather than big combinations
    with lots of joins.
  - Think about https://docs.djangoproject.com/en/1.3/topics/db/multi-db/
    early.
  - Add indexes, de-normalise.
  - Tune the database: *PostgreSQL has really low default values (for memory
    usage)*.

- Make sure you use ``ETag`` correctly:
  https://docs.djangoproject.com/en/1.3/topics/conditional-view-processing/
- http://haproxy.1wt.eu/ has an API which allows you to take out a server
  while you upgrade.
- Database:

  - Django ``raw_id_fields`` can cause performance problems, so be careful:
    http://www.thecssdiv.co.uk/2008/09/22/django-raw-id-fields-explained-basically/
  - Use http://pypi.python.org/pypi/django-debug-toolbar/ so you can check SQL
    queries as you develop.
  - Use separate queries and use the container stuff (lists etc) to build the
    data.
  - MySQL and PostgreSQL both have features to check for slow queries.

- Load Testing

  - Re-run live requests from the log files (mirror requests/log replay).
  - Test live, but make sure you can roll back quickly if there is a problem.

    - Backward migration is *rarely* a good idea.  It should not be an option.
    - Only ever add columns/tables - never remove them.

  - Use feature flags so you can switch on/off features.

- http://gunicorn.org/ binds to linux sockets and it's async mode will help
  with external HTTP requests.
- Check ports *are in full duplex mode*??

Whither Django
==============

Russell Keith Magee (core committer).

- Django future features

  - App refactor??
  - More class based views.  Apparently we cannot do formsets in admin.
  - Lazy foreign keys.
  - Configurable user models.

- Trends

  - Better packaging tools.
  - Deployment tools (compare to PHP).
  - Microframeworks (always considered Django to be a microframework).
  - Project merges e.g. MERB and RAILS.
  - Concurrency: NodeJS, CoffeeScript, Comet

- Django 2

  - Can we get rid of ``settings.py``?
  - More modular?
  - Based on pyramid?
  - Coincide with python 3?

- Client side development i.e. JavaScript

  - Does Django become less and less relevant?
  - We don't have the answer.
  - Perhaps the Django community can incubate new projects (similar to the way
    Apache does it)?

Sprinting
=========

- Tests

  - Write unit tests, NOT doctests.
  - Test as close to the problem as possible.
  - Put the test in the same place as similar tests.
  - Integrate (re-use) existing fixtures.  Better to modify existing features
    than create new ones.

- Docs

  - Don't get hung up on exact words.
  - A first draft is very helpful.
  - A working example is very helpful.

Other Links
===========

- Django-based Chat Bot System:
  http://zork.net/yardbird/
- `Bradley Wright - Realtime Presentation`_

To Do
=====

- Check out *mix-ins*.
- Why don't we post our job advert on Twitter or Bristol Django User Group?
- Use class based views.
- Zachary had an ``apps`` folder in the root of his Django project.  How does
  this work?
- Check out the ``property`` decorator.  Sounds like I should be using this.
- Check out app level imports.  These should be used for reusable apps.
- Start using Celery and a queue of some kind.


.. _`django-qunit`: https://github.com/sebleier/django/tree/qunit
.. _`Bradley Wright - Realtime Presentation`: https://github.com/bradleywright/Realtime-presentation/blob/master/presentation-notes.rst

