staticfiles
***********

.. highlight:: python

Links
=====

- https://docs.djangoproject.com/en/1.4/howto/static-files/
- https://docs.djangoproject.com/en/1.4/ref/contrib/staticfiles/

Configuration
=============

Put your static files somewhere that ``staticfiles`` will find them.  By
default, this means within ``static/`` subdirectories of apps in your
``INSTALLED_APPS``.

Template
--------

::

  <img src="{{ STATIC_URL }}images/hi.jpg" />

Settings
--------

Set the folder where ``collectstatic`` will put the files:

::

  STATIC_ROOT = 'web_static/'

::

  INSTALLED_APPS = (
      'django.contrib.staticfiles',

Command
=======

::

  python manage.py collectstatic

Other Settings
==============

To copy files other than the ones in your installed apps, put the following
into your ``settings.py`` file:

::

  STATICFILES_DIRS = (
      ('pinax', '/home/patrick/src/pinax/pinax/media/default/pinax'),
  )

Note: In this example, the media files in my home folder will be copied by
the ``build_static`` command to the ``pinax`` sub-folder of ``STATIC_URL``.
