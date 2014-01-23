dateutil
********

.. highlight:: python

http://labix.org/python-dateutil

powerful extensions to the standard datetime module

For python 2.x::

  pip install python-dateutil==1.5


Import
======

::

  from datetime import date
  from dateutil.relativedelta import relativedelta

Sample
======

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

Tomorrow::

  date.today() + relativedelta(days=1)
