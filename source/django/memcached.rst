Memcache
********

**Note**: Also see :doc:`cache`.

Links
=====

`A Cache Status View for Django`_

Install
=======

:doc:`../memcached/install`

Configuration
=============

In your project ``settings.py`` file:

::

  CACHE_BACKEND = 'memcached://localhost:11211/'

Note: These notes are not complete... just updating as I learn...

Statistics
==========

::

  # ./manage.py shell
  from django.core.cache import cache
  cache._cache.get_stats()


.. _`A Cache Status View for Django`: http://effbot.org/zone/django-memcached-view.htm

