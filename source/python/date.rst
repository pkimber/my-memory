Date
****

.. highlight:: python

Links
=====

.. note::

  Check :doc:`modules/dateutil`.  It is very nice.

- :doc:`time`
- :doc:`calendar`
- https://github.com/crsmithdev/arrow
  Better date and time manipulation for Python
- `datetime - Basic date and time types`_
- http://effbot.org/librarybook/datetime.htm
- http://labix.org/python-dateutil
  The dateutil module provides powerful extensions to the standard datetime
  module.

Snippets
--------

.. note::

  Check :doc:`modules/dateutil` before using these snippets...

- Add one day, :doc:`snippets/date`
- Add one month, :doc:`snippets/date`
- Last day of month, :doc:`snippets/date`
- Remove the time, :doc:`snippets/date`

Constructor
===========

::

  datetime(year, month, day [,hour [,minute [,second]]])

.. _combine_date_time:

Combine
=======

Combine date and time::

  start_date_time = datetime.combine(start_date, start_time)

Conversion
==========

String
------

::

  >>> from datetime import datetime
  >>> datetime.strptime("2007-03-04 21:08:12", "%Y-%m-%d %H:%M:%S")
  datetime.datetime(2007, 3, 4, 21, 8, 12)
  >>>
  >>> datetime.strptime('26/04/2009 20:39:34', '%d/%m/%Y %H:%M:%S')
  datetime.datetime(2009, 4, 26, 20, 39, 34)

Time Stamp
----------

::

  print datetime.datetime.fromtimestamp(value)

Difference
==========

- timedelta_

"*Only days, seconds and microseconds are stored internally*".  To calculate
the difference, you only have to take into account these three values::

  >>> import datetime
  >>> d1 = datetime.datetime(2007, 11, 1, 19, 30)
  >>> d2 = datetime.datetime(2007, 11, 1, 19, 45)
  >>> t = d2 - d1
  >>> t
  datetime.timedelta(0, 900)
  >>> t.days, t.seconds, t.microseconds
  (0, 900, 0)

To convert a ``timedelta`` into milliseconds and minutes::

  def timedelta_minutes(td):
      return td.days * 1440 + td.seconds / 60

  def timedelta_seconds(td):
      return td.total_seconds()

  def timedelta_milliseconds(td):
      return td.days * 86400000 + td.seconds * 1000 + td.microseconds / 1000

Iterator
========

Using this nice `date range iterator`_::

  import datetime

  def datetime_iterator(from_date=datetime.datetime.now(), to_date=None):
      while to_date is None or from_date <= to_date:
          yield from_date
          from_date = from_date + datetime.timedelta(days=1)
      return

...we can get a list of dates::

  date_start = datetime.datetime(2009, 7, 27)
  date_end = datetime.datetime(2009, 11, 16)
  for report_date in datetime_iterator(date_start, date_end):
      print report_date

Replace
=======

::

  date.replace(year, month, day)

Return a date with the same value, except for those parameters given new
values by whichever keyword arguments are specified.  For example, if::

  d == date(2002, 12, 31)``, then ``d.replace(day=26) == date(2002, 12, 26)

Today
=====

::

  from datetime import datetime
  datetime.today()

Format
======

::

  >>> from datetime import datetime
  >>> now = datetime.now()

  >>> now.strftime("%Y%m%dT%H%M%S")
  '20080423T144805'

  >>> now.strftime("%a %d %b %Y %H:%M:%S")
  'Wed 23 Apr 2008 14:48:05'

  >>> now.strftime('%d/%m/%Y %H:%M')
  '20/05/2011 10:55'

Also see ``strftime`` in time_ and http://strftime.org/


.. _`date range iterator`: http://www.ianlewis.org/en/python-date-range-iterator
.. _`datetime - Basic date and time types`: http://docs.python.org/library/datetime.html
.. _time: http://docs.python.org/lib/module-time.html
.. _timedelta: http://docs.python.org/lib/datetime-timedelta.html
