Getting Started
***************

.. highlight:: python

Links
=====

- :doc:`client`
- :doc:`../snippets/testing`
- :doc:`fixture`
- :doc:`runner`

Configuration
=============

To speed up the testing, use an in-memory SQLite database:

Create a new settings file for testing e.g. ``test_settings.py``::

  from settings import *

  CACHE_BACKEND = 'dummy:///'
  CACHE_TIMEOUT = 0

  DATABASES = {
      'default': {
          'ENGINE': 'django.db.backends.sqlite3',
          'NAME': 'testing.db',
          'USER': '',
          'PASSWORD': '',
          'HOST': '',
          'PORT': '',
      }
  }

  DATABASE_OPTIONS = {}

Run the test command, passing the test settings file as a parameter::

  ./manage.py test --settings=test_settings

Management Command
==================

Application
-----------

To test a single application (in this example ``villages``)::

  python manage.py test villages

To run a single test::

  django-admin.py test villages.TestHelper.test_create

Note: As shown in this example, you don't need to add the ``tests`` folder to
the python path.
