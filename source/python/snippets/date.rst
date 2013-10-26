Date
****

.. highlight:: python

Adding
======

To add one day to the current date:

::

  import datetime
  d = datetime.datetime.today()
  one_day = datetime.timedelta(days=1)
  d = d + one_day

To add one month is a little awkward e.g:

::

  # Copied from:
  # http://code.activestate.com/recipes/577274-subtract-or-add-a-month-to-a-datetimedate-or-datet/
  # For finding the next month's first you advance to the next month. By adding
  # 32 days from the first of a month you will always reach the next month.
  def add_one_month(dt0):
      dt1 = dt0.replace(day=1)
      dt2 = dt1 + datetime.timedelta(days=32)
      dt3 = dt2.replace(day=1)
      return dt3

Combine
=======

::

  return datetime.combine(self.start_date, self.start_time)

Info
====

Next Monday
-----------

::

  today = datetime.date.today()
  next_monday = today + datetime.timedelta(days=-today.weekday(), weeks=1)

Last Day of Month
-----------------

`Get last day of the month`_

::

  today = datetime.datetime.today()
  first_last_day = calendar.monthrange(today.year, today.month)
  return datetime.datetime(today.year, today.month, first_last_day[1])

Tidy
----

To remove the time from a ``datetime`` value:

::

  >>> import datetime
  >>> d = datetime.datetime.today()
  >>> d
  datetime.datetime(2011, 7, 18, 10, 55, 25, 598169)
  >>> d.date()
  datetime.date(2011, 7, 18)


.. _`Get last day of the month`: http://stackoverflow.com/questions/42950/get-last-day-of-the-month-in-python
