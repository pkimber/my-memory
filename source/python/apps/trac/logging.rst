Logging
*******

To enable logging:

::

  [logging]
  log_file = trac.log
  log_format = Trac[$(module)s] $(levelname)s: $(message)s
  log_level = DEBUG
  log_type = file
