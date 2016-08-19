Logging
*******

.. highlight:: python

Links
=====

- `logging - Logging facility for Python`_
- `Python Standard Logging`_
- `Python Logging 101`_

From `Become a logging expert in 30 minutes`_:

- The ``logger`` is the point of entry for all logged messages.
- ``logger`` is namespace specific.
- It decides whether it is going to accept or reject the message.
- The root logger is the top level piece. ``propagate = True``.  ``propagate``
  says to take this setting and apply it to every single key in the namespace
  underneath e.g. if we set ``propagate = True`` for ``foo``, then the setting
  will apply to ``foo.bar.baz``.
- If you get double logging, then check ``propagate = True``.
- ``incremental = True``, adds to the pre-existing configuration.  This has
  dangerous behaviour i.e. you can't be sure of the pre-existing configuration.
- Handlers deliver messages to their destination.
- Formatters are destination specific.
- Filters are applied to loggers e.g. if you want to log output from one IP
  address.

Setup
=====

Create a module to manage the configuration::

  import logging

  LOGGING_FORMAT = '%(asctime)s %(levelname)-5s %(module)s %(funcName)s %(message)s'

  logging.basicConfig(
      level = logging.DEBUG,
      format = LOGGING_FORMAT,
      datefmt = '%H:%M:%S',
      filename = 'logger.log',
      filemode = 'w'
  )

Note:

- See `Formatter Objects`_.
- See LOGGING_FORMAT_
- Remove the ``filemode`` if you want to append to the file.
- If (for example) you name this module, ``logging_config.py``, your main
  module (or unit test), will need to ``import logging_config`` to activate
  the configuration.
- python version 2.4, didn't seem to recognise the ``funcName``
  parameter.

In the other modules of your application, import the configuration module and
start logging::

 import logging

 logger = logging.getLogger(__name__)

 logger.debug('some log text')


See `Advanced Logging Tutorial`_ for details about using ``getLogger``.


.. _`Advanced Logging Tutorial`: http://docs.python.org/howto/logging.html#advanced-logging-tutorial
.. _`Become a logging expert in 30 minutes`: https://www.youtube.com/watch?v=24_4WWkSmNo
.. _`Formatter Objects`: http://docs.python.org/library/logging.html#formatter-objects
.. _`logging - Logging facility for Python`: http://docs.python.org/lib/module-logging.html
.. _`Python Logging 101`: http://plumberjack.blogspot.com/2009/09/python-logging-101.html
.. _`Python Standard Logging`: http://onlamp.com/pub/a/python/2005/06/02/logging.html
.. _LOGGING_FORMAT: http://docs.python.org/library/logging.html#logrecord-attributes
