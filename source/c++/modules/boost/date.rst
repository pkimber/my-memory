Date
****

.. highlight:: c++

Declare
=======

::

  boost::gregorian::date ViewDate;

Day, Month and Year
===================

::

  int(d.day()), int(d.month()), int(d.year()))

Day Name:

::

  greg_weekday(d.day_of_week()).as_long_string();

Day of Week

::

  gregorian_calendar::ymd_type ymd(d.year(), d.month(), d.day());
  short day_of_week(gregorian_calendar::day_of_week(ymd));

Month Name

::

  greg_month(d.month()).as_long_string();

Increment/Decrement
===================

Day
---

::

  boost::gregorian::day_iterator di(ViewDate);
  ViewDate = *(++di);

::

  boost::gregorian::day_iterator di(ViewDate);
  ViewDate = *(--di);

Month
-----

::

  boost::gregorian::month_iterator mi(pdate, abs(months));
  return *(--mi);

::

  boost::gregorian::month_iterator mi(pdate, months);
  return *(++mi);

Year
----

::

  boost::gregorian::year_iterator yi(result, years);
  result = *(++yi);

Today
=====

::

  boost::gregorian::day_clock::local_day()

Month
=====

Days in a Month:

::

  gregorian_calendar::end_of_month_day(d.year(), d.month());

Validation
==========

::

  d.is_not_a_date()

