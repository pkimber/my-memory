Debug Toolbar
*************

Links
=====

- django-debug-toolbar_:
- `Screencast for version 0.8`_

Sample
------

- `Sample project which has the toolbar enabled`_.

Install
=======

Using ``pip``:

::

  pip install django-debug-toolbar

...or from source:

::

  pip install git+git://github.com/robhudson/django-debug-toolbar.git

Using :doc:`../../mercurial/extensions/hg-git`:

::

  cd ~/src
  hg clone git://github.com/robhudson/django-debug-toolbar.git

Change into your python ``site-packages`` folder and create a symbolic link to the source code:

::

  cd /python/folder/site-packages/
  ln -s /home/patrick/src/django-debug-toolbar.git/debug_toolbar/ .

Add the following middleware to your project's ``settings.py`` file:

::

  MIDDLEWARE_CLASSES = (
      'debug_toolbar.middleware.DebugToolbarMiddleware',

Note: The order of ``MIDDLEWARE_CLASSES`` is important: the Debug Toolbar middleware must come
after any other middleware that encodes the response's content (such as GZipMiddleware).

Make sure your IP is listed in the ``INTERNAL_IPS`` setting.  If you are working locally this will
be:

::

  INTERNAL_IPS = ('127.0.0.1',)

Add ``debug_toolbar`` to your ``INSTALLED_APPS``.

::

  INSTALLED_APPS = (
      'debug_toolbar',


.. _`Sample project which has the toolbar enabled`: http://toybox/hg/sample/file/tip/python/django/sample_debug_toolbar/
.. _`Screencast for version 0.8`: http://robhudson.github.com/django-debug-toolbar/
.. _django-debug-toolbar: http://github.com/robhudson/django-debug-toolbar/tree/master
.. _hg-git: ../mercurial/plugin-hg-git.html
