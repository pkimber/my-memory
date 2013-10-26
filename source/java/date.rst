Date
****

::

  import java.util.Date;

Links
=====

- Snippets - Date, :doc:`snippets/date`.

Arithmetic
==========

::

  final Calendar calendar = new GregorianCalendar(2009, Calendar.JANUARY, 22);
  calendar.add(Calendar.MONTH, 7);

Calendar
========

Get the number of days in a month:

::

  import java.util.GregorianCalendar;
  final GregorianCalendar calendar = new GregorianCalendar();
  calendar.setTime(invoice.getDueDate());
  int days = calendar.getActualMaximum(Calendar.DAY_OF_MONTH)

Gets the date and time now!
===========================

::

  java.util.Date date = new java.util.Date();
  out.write(date.toString());

Construct a date:
=================

`Working in Java time`_
Learn the basics of calculating elapsed time in Java.

::

  /*
   * Note.  Months are zero based.  So Jan == 0.
   * Use the constants in the calendar class to make things easier.
   */
  Calendar c = new GregorianCalendar(1964, Calendar.SEPTEMBER, 22);
  Date d = c.getTime();
  // Also...
  // Calendar c = new GregorianCalendar();
  // GregorianCalendar(int year, int month, int date, int hour, int minute, int second)

Milliseconds
============

Returns the number of milliseconds since *January 1, 1970, 00:00:00 GMT*
represented by this Date object

::

  new Date().getTime()

String
======

`How do I convert String to Date object?`_

::

  package org.kodejava.example.java.util;

  import java.text.DateFormat;
  import java.text.SimpleDateFormat;
  import java.text.ParseException;
  import java.util.Date;

  public class StringToDate
  {
      public static void main(String[] args)
      {
          DateFormat df = new SimpleDateFormat("dd/MM/yyyy");

          try
          {
              Date today = df.parse("20/12/2005");
              System.out.println("Today = " + df.format(today));
          } catch (ParseException e)
          {
              e.printStackTrace();
          }
      }
  }

ToString
========

SimpleDateFormat_:

Convert a date to a formatted string:

::

  SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");
  // another example...        new SimpleDateFormat("yyyyMMdd_kkmmss_SSSS")
  return formatter.format(fieldDate);

==========  ======================  ==============
**Letter**  **Component**           **Example**
==========  ======================  ==============
``d``       Day in month            10
``k``       Hour in the day (1-24)  24
``m``       Minute in the hour      30
``M``       Month in year           2
``s``       Seconds in a minute     55
``S``       Milliseconds            123
``y``       Year                    1996
==========  ======================  ==============

Difference
==========

Days
----

`Losing Time on the Garden Path`_: Calculating the Difference Between Two
Datetime Stamps

*The problem is that the obvious solution -- subtracting the millisecond
timestamps of two moments and dividing by the number of milliseconds per day,
contains a bug*...

Example project with TimeHelper class:

http://g1/svn/home/patrick/learn/time-difference-example/

::

  public final class TimeHelper {

      /** Time calculation. */
      private static final long MILLISECS_PER_MINUTE = 60 * 1000;
      /** Time calculation. */
      private static final long MILLISECS_PER_HOUR = 60 * MILLISECS_PER_MINUTE;
      /** Time calculation. */
      private static final long MILLISECS_PER_DAY = 24 * MILLISECS_PER_HOUR;

      public TimeHelper() { }

      /**
       * Compares two dates and returns the number of days between the two dates.
       */
      public static long differenceInDays(final Date startDate, final Date endDate) {
          Calendar endCal = Calendar.getInstance();
          endCal.setTime(endDate);
          Calendar startCal = Calendar.getInstance();
          startCal.setTime(startDate);
          long endL = endCal.getTimeInMillis() + endCal.getTimeZone().getOffset(endCal.getTimeInMillis());
          long startL = startCal.getTimeInMillis() + startCal.getTimeZone().getOffset(startCal.getTimeInMillis());
          return (endL - startL) / MILLISECS_PER_DAY;
      }
  }


.. _`Working in Java time`: http://www.javaworld.com/javaworld/jw-03-2001/jw-0330-time.html
.. _`How do I convert String to Date object?`: http://www.kodejava.org/examples/19.html
.. _SimpleDateFormat: http://java.sun.com/j2se/1.4.2/docs/api/java/text/SimpleDateFormat.html
.. _`Losing Time on the Garden Path`: http://www.xmission.com/~goodhill/dates/deltaDates.html

