time
****

.. highlight:: python

Combine
=======

See :ref:`combine_date_time`

Constructor
===========

::

  >>> from datetime import time
  >>> time()
  datetime.time(0, 0)
  # hour=0, minute=0, second=0, microsecond=0, tzinfo=None
  >>> time(13, 45)
  datetime.time(13, 45)
  >>> time(13, 45, 59)
  datetime.time(13, 45, 59)

Difference
==========

See :doc:`date` difference notes...

Format
======

::

  $ python
  >>> import time
  >>> time.strftime('%a %d %b %Y %H:%M:%S')
  'Tue 19 Jan 2010 13:30:05'

Scheduling
==========

See :doc:`links`, Scheduling.

Sleep
=====

The time is in seconds::

  import time
  time.sleep(1)
