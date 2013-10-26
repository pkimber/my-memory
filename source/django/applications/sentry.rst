Sentry
******

Sentry provides you with a generic interface to view and interact with your
error logs.

Links
=====

- https://github.com/dcramer/django-sentry
- `Keeping Your Logging Compatible With Sentry`_

Install
=======

::

  pip install django-sentry

Configuration
=============

**Note** The recommended production configuration of Sentry involves setting up
a separate web server to handle your error logging.  The following instructions
are for development purposes only...

- Add the following to ``settings.py``:

  ::

    SENTRY_TESTING = True

- Add ``sentry`` and ``sentry.client`` to ``INSTALLED_APPS``:

  ::

    INSTALLED_APPS = (
        ...
        'sentry',
        'sentry.client',
    )

- Update the logging configuration;

  ::

    LOGGING = {
        'version': 1,
        'disable_existing_loggers': True,
        'formatters': {
            'verbose': {
                'format': '%(levelname)s %(asctime)s %(module)s %(process)d %(thread)d %(message)s'
            },
        },
        'handlers': {
            'sentry': {
                'level': 'DEBUG',
                'class': 'sentry.client.handlers.SentryHandler',
                'formatter': 'verbose'
            },
            'console': {
                'level': 'DEBUG',
                'class': 'logging.StreamHandler',
                'formatter': 'verbose'
            }
        },
        'loggers': {
            '()': {
                'level': 'WARNING',
                'handlers': ['sentry'],
            },
            'sentry.errors': {
                'level': 'DEBUG',
                'handlers': ['console'],
                'propagate': False,
            },
        },
    }

  Note: see *No Logging* issues (below)...

- Add the following to ``urls.py``:

  ::

    urlpatterns = patterns('',
        (r'^sentry/', include('sentry.web.urls')),
    )

- Create the database tables:

  ::

    python manage.py syncdb

Usage
=====

Browse to http://localhost:8000/sentry/

Issues
======

No Logging
----------

The documentation suggests setting ``loggers`` like this:

::

  'loggers': {
      '()': {

... this didn't work for me, so I changed to the following:

::

  'loggers': {
      '': {


.. _`Keeping Your Logging Compatible With Sentry`: http://justcramer.com/2010/10/19/keeping-your-logging-compatible-with-sentry/
