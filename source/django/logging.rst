Logging
*******

Links
=====

- Logging_
- :doc:`applications/sentry`

Usage
=====

Configuration
-------------

- In ``settings.py`` set-up the logging:

  ::

    LOGGING = {
        'version': 1,
        'disable_existing_loggers': True,
        'formatters': {
            'standard': {
                'format': '%(asctime)s [%(levelname)s] %(name)s: %(message)s'
            },
        },
        'handlers': {
            'default': {
                'level':'DEBUG',
                'class':'logging.handlers.RotatingFileHandler',
                'filename': 'logger.log',
                'maxBytes': 1024*1024*5, # 5 MB
                'backupCount': 5,
                'formatter':'standard',
            },
            'request_handler': {
                'level':'DEBUG',
                'class':'logging.handlers.RotatingFileHandler',
                'filename': 'logger_request.log',
                'maxBytes': 1024*1024*5, # 5 MB
                'backupCount': 5,
                'formatter':'standard',
            },
        },
        'loggers': {
            '': {
                'handlers': ['default'],
                'level': 'DEBUG',
                'propagate': True
            },
            'django.request': { # Stop SQL debug from logging to main logger
                'handlers': ['request_handler'],
                'level': 'DEBUG',
                'propagate': False
            },
        }
    }

  ::

    LOGGING = {
        'version': 1,
        'disable_existing_loggers': True,
        'formatters': {
            'standard': {
                'format': '%(asctime)s [%(levelname)s] %(name)s: %(message)s'
            },
        },
        'handlers': {
            'default': {
                'level':'DEBUG',
                'class':'logging.FileHandler',
                'filename': 'logger.log',
                'formatter':'standard',
                'mode': 'w',
            },
            'request_handler': {
                'level':'DEBUG',
                'class':'logging.FileHandler',
                'filename': 'logger_request.log',
                'formatter':'standard',
                'mode': 'w',
            },
            'selenium': {
                'level':'DEBUG',
                'class':'logging.FileHandler',
                'filename': 'logger_selenium.log',
                'formatter':'standard',
                'mode': 'w',
            },
            'south': {
                'level':'DEBUG',
                'class':'logging.FileHandler',
                'filename': 'logger_south.log',
                'formatter':'standard',
                'mode': 'w',
            },
        },
        'loggers': {
            '': {
                'handlers': ['default'],
                'level': 'DEBUG',
                'propagate': True
            },
            'django.request': { # Stop SQL debug from logging to main logger
                'handlers': ['request_handler'],
                'level': 'DEBUG',
                'propagate': False
            },
            'selenium.webdriver': {
                'handlers': ['selenium'],
                'level': 'DEBUG',
                'propagate': False
            },
            'south': {
                'handlers': ['south'],
                'level': 'DEBUG',
                'propagate': False
            },
        }
    }

- In your python (view) code, log as normal e.g:

  ::

    import logging

    logger = logging.getLogger(__name__)

    class Temp(...):

        def something(self):
            logger.error('Hello and Goodbye')


.. _Logging: http://docs.djangoproject.com/en/1.3/topics/logging/
