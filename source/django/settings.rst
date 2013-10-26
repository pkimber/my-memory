settings
********

import
======

::

  from django.conf import settings

  if settings.DEBUG:
      # Do something

Pattern
=======

::

  try:
      lock_duration = settings.WIKI_LOCK_DURATION
  except AttributeError:
      lock_duration = 15

Secret Key
==========

To generate a secret key, see :doc:`applications/extensions`
