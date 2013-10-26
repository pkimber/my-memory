Date
****

Calendar
========

Why should I consider using an auxiliary calendar table?

::

  ../../misc/howto/microsoft/why-should-i-consider-using-an-auxiliary-calendar-table.pdf

Copy of an article `from aspfaq`_.

I wrote this function to return a table variable containing a range of dates:

::

  CREATE FUNCTION getCalendarTable(
      @start_date DATETIME,
      @end_date DATETIME)
      RETURNS @calendar_table TABLE (cal_date SMALLDATETIME)
  AS
  BEGIN
      DECLARE @dt SMALLDATETIME
      SET @dt = @start_date
      WHILE @dt < @end_date
      BEGIN
          INSERT @calendar_table(cal_date)
          SELECT DATEADD([day], 0, DATEDIFF([day], 0, @dt))
          SET @dt = @dt + 1
      END
      RETURN
  END

Note: If you read the article above, you will read about performance issues
with this algorithm.  For now, I want to keep it simple.  To use this function:

- Create a test table and insert some data:

  ::

    CREATE TABLE messages (
      user_initials VARCHAR(3),
      received_date DATETIME
    )

    INSERT messages(user_initials, received_date)
    VALUES('PJK', '2008-06-02')
    INSERT messages(user_initials, received_date)
    VALUES('DN', '2008-06-02')
    INSERT messages(user_initials, received_date)
    VALUES('AK', '2008-06-04')
    INSERT messages(user_initials, received_date)
    VALUES('BK', '2008-06-06')
    INSERT messages(user_initials, received_date)
    VALUES('MK', '2008-06-06')
    INSERT messages(user_initials, received_date)
    VALUES('SW', '2008-06-06')

- This query will use the calendar function to display all the dates:

  ::

    SELECT calendar.cal_date, COUNT(messages.user_initials)
      FROM getCalendarTable('2008-06-01', '2008-06-07') calendar
      LEFT OUTER JOIN messages
        ON messages.received_date = calendar.cal_date
      GROUP BY calendar.cal_date
      ORDER BY calendar.cal_date

**Note**: For a more robust way of writing this method, see

- Transact-SQL, Cursors, :doc:`../transact-sql`.

DATEDIFF
========

It is not possible to part the ``datepart`` as a parameter, so a function like
this is needed:

::

  CREATE FUNCTION dateDiffParam(
      @date_part VARCHAR(10),
      @start_date DATETIME,
      @end_date DATETIME)
      RETURNS INT
  AS
  BEGIN
      DECLARE @result INT
      SET @result = (
          SELECT
              CASE
                  WHEN @date_part = 'SECOND' THEN DATEDIFF(second, @start_date, @end_date)
                  WHEN @date_part = 'MINUTE' THEN DATEDIFF(minute, @start_date, @end_date)
                  WHEN @date_part = 'HOUR' THEN DATEDIFF(hour, @start_date, @end_date)
                  WHEN @date_part = 'DAY' THEN DATEDIFF(day, @start_date, @end_date)
                  WHEN @date_part = 'WEEK' THEN DATEDIFF(week, @start_date, @end_date)
                  WHEN @date_part = 'MONTH' THEN DATEDIFF(month, @start_date, @end_date)
                  WHEN @date_part = 'YEAR' THEN DATEDIFF(year, @start_date, @end_date)
                  ELSE DATEDIFF(DAY, @start_date, @end_date)
              END
          )
      RETURN @result
  END

Date Only
=========

To remove the time part from a ``DATETIME`` column (from
`SQL Server Central Forums`_:

::

  DATEADD(day, 0, DATEDIFF(day, 0, sent_datetime)) AS sent_date_only

Format
======

`Displaying Dates and Times in Different Formats`_

::

  RIGHT(CAST(100 + DATEPART(day, @appointmentDate) AS CHAR(3)), 2) + '/'
      + RIGHT(CAST(100 + DATEPART(month, @appointmentDate) AS CHAR(3)), 2) + '/'
      + CAST(DATEPART(year, @appointmentDate) AS CHAR(4))

First Day in Week
=================

`Getting the first day in a week with T-SQL`_

::

  SELECT DATEADD([week], DATEDIFF([week], 0, GETDATE()), 0)

This is quite a nice combination:

::

  DECLARE @first_day_of_last_week DATETIME
  DECLARE @first_day_of_this_week DATETIME
  SELECT @first_day_of_this_week = DATEADD([week], DATEDIFF([week], 0, GETDATE()), 0)
  SELECT @first_day_of_last_week = DATEADD([week], -1, @first_day_of_this_week)
  SELECT @first_day_of_last_week, @first_day_of_this_week

Function to calculate a persons Age in T-SQL
============================================

From http://www.wisesoft.co.uk/,

::
  ../../misc/howto/microsoft/fAgeCalc.doc

::

  create function dbo.fAgeCalc(@DOB datetime,@Date datetime) 
  returns smallint 
  as 
  ----------------------------------------------------
  -- * Created By David Wiseman, Updated 03/11/2006
  -- * http://www.wisesoft.co.uk
  -- * This function calculates a persons age at a 
  -- * specified date from their date of birth.
  -- * Usage:
  -- * select dbo.fAgeCalc('1982-04-18',GetDate())
  -- * select dbo.fAgeCalc('1982-04-18','2006-11-03')
  ----------------------------------------------------
  begin 
  return (
    select case when month(@DOB)>month(@Date) then datediff(yyyy,@DOB,@Date)-1 
        when month(@DOB)<month(@Date) then datediff(yyyy,@DOB,@Date) 
        when month(@DOB)=month(@Date) then 
          case when day(@DOB)>day(@Date)
            then datediff(yyyy,@DOB,@Date)-1 
          else datediff(yyyy,@DOB,@Date) end 
        end) 
  end

To call this function for this ``date_of_birth`` field:

::

  dbo.fAgeCalc(date_of_birth, GetDate())

One Day
=======

To select all transactions for a date:

::

  WHERE (received_datetime BETWEEN '2008-06-01 00:00:00.000' AND '2008-06-01 23:59:59.999')

Yesterday
=========

Idea based on *First Day in Week* (see above):

::

  DECLARE @start_of_today DATETIME
  DECLARE @start_of_yesterday DATETIME
  SELECT @start_of_today = DATEADD([day], DATEDIFF([day], 0, GETDATE()), 0)
  SELECT @start_of_yesterday = DATEADD([day], -1, @start_of_today)
  SELECT @start_of_today, @start_of_yesterday


.. _`from aspfaq`: http://sqlserver2000.databases.aspfaq.com/why-should-i-consider-using-an-auxiliary-calendar-table.html
.. _`SQL Server Central Forums`: http://www.sqlservercentral.com/Forums/Topic324177-8-1.aspx#bm324730
.. _`Displaying Dates and Times in Different Formats`: http://www.databasejournal.com/features/mssql/article.php/10894_2197931_2/Working-with-SQL-Server-DateTime-Variables-Part-Two---Displaying-Dates-and-Times-in-Different-Formats.htm
.. _`Getting the first day in a week with T-SQL`: http://bloodsweatand.net/blogentry.aspx?entryid=12

