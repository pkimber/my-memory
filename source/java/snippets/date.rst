Date
****

Values
======

`How do I get date, month, year values from the current date?`_

::

  import java.util.Calendar;

  public class CalendarExample
  {
      public static void main(String[] args)
      {
          //
          // Get various information from the Date object.
          //
          Calendar cal = Calendar.getInstance();
          int day = cal.get(Calendar.DATE);
          int month = cal.get(Calendar.MONTH) + 1;
          int year = cal.get(Calendar.YEAR);
          int dow = cal.get(Calendar.DAY_OF_WEEK);
          int dom = cal.get(Calendar.DAY_OF_MONTH);
          int doy = cal.get(Calendar.DAY_OF_YEAR);

          System.out.println("Current Date: " + cal.getTime());
          System.out.println("Day: " + day);
          System.out.println("Month: " + month);
          System.out.println("Year: " + year);
          System.out.println("Day of Week: " + dow);
          System.out.println("Day of Month: " + dom);
          System.out.println("Day of Year: " + doy);
      }
  }

Here is the result of this example:

::

  Current Date: Thu Dec 29 13:41:09 ICT 2005
  Day: 29
  Month: 12
  Year: 2005
  Day of Week: 5
  Day of Month: 29
  Day of Year: 363


.. _`How do I get date, month, year values from the current date?`: http://www.kodejava.org/examples/21.html

