dateutil
********

.. highlight:: python

http://labix.org/python-dateutil

powerful extensions to the standard datetime module

.. tip:: Check out `Delorean (Time Travel Made Easy)`_
         (`Delorean Documentation`_)

For python 2.x::

  pip install python-dateutil==1.5

Import
======

::

  from datetime import date
  from dateutil.relativedelta import relativedelta

rrule
=====

Django timezone::

  from dateutil.rrule import MONTHLY
  from dateutil.rrule import rrule
  from django.utils import timezone

  result = rrule(MONTHLY, bymonthday=(-1,), dtstart=timezone.now())
  result.after(timezone.now())

.. tip:: To get ``rrule`` to work with ``timezone``, then set ``dtstart`` to a
         timezone aware date/time.

Sample
======

Iterate
-------

::

  from dateutil.rrule import (
      DAILY,
      rrule,
  )
  for day in rrule(DAILY, dtstart=date(2015, 1, 1), until=date(2015, 1, 3)):
      print(day)

  >>> 2015-01-01 00:00:00
  >>> 2015-01-02 00:00:00
  >>> 2015-01-03 00:00:00

Specific
--------

First day of the month::

  d = date(2013, 9, 22)

  >>> d + relativedelta(day=1)
  datetime.date(2013, 9, 1)

First day of the next month::

  >>> d + relativedelta(months=+1, day=1)
  datetime.date(2013, 10, 1)

First day of the previous month::

  >>> d + relativedelta(months=-1, day=1)
  datetime.date(2013, 8, 1)

Last day of the previous month::

  >>> d + relativedelta(day=1, days=-1)
  datetime.date(2013, 8, 31)

Last day of this month::

  >>> d + relativedelta(months=+1, day=1, days=-1)

Tomorrow::

  date.today() + relativedelta(days=1)


.. _`Delorean (Time Travel Made Easy)`: https://github.com/myusuf3/delorean
.. _`Delorean Documentation`: http://delorean.readthedocs.org/

