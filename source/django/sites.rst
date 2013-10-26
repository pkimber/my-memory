Sites
*****

Links
=====

- `Django documentation - The "sites" framework`_

Application
===========

::

  INSTALLED_APPS = (
      'django.contrib.sites',

Current
=======

::

  from django.contrib.sites.models import Site

  def my_view(request):
      current_site = Site.objects.get_current()
      if current_site.domain == 'foo.com':
          # Do something
      else:
          # Do something else.

Fixture
=======

::

  python manage.py dumpdata sites --indent 4

Model
=====

::

  from django.contrib.sites.models import Site

  site = models.ForeignKey(Site, unique=True)

Template
========

::

   {{ site.id }}
   {{ site.domain }}


.. _`Django documentation - The "sites" framework`: http://docs.djangoproject.com/en/1.2/ref/contrib/sites/

