Code Snippets
*************

Links
=====

- 5 Useful SQL Server Scripts

  ::

    ../../../misc/howto/microsoft/sql-server/blog-tboda-com-5-useful-sql-server-scripts.pdf

  Copy of blog entry at `blog.TBODA.com`_ (includes database backup, clear all
  records, distance between points (see below), get table size and clear
  transaction logs).

- `Display Job History`_

Comma Separated - CSV
=====================

- `How to pass a list of values or array to SQL Server stored procedure?`_

  I have modified this sample, to use the ordering of the list:

  ::

    SET ANSI_NULLS ON
    SET QUOTED_IDENTIFIER ON
    GO
    ALTER PROC [dbo].[get_locations_by_id_list]
        @location_id_list VARCHAR(MAX)
    AS
    BEGIN
        SET NOCOUNT ON
        DECLARE @TempList TABLE
        (
            ordering INT,
            location_id INT
        )
        DECLARE @ordering INT
        DECLARE @locationId VARCHAR(20), @pos INT

        SET @ordering = 0
        SET @location_id_list = LTRIM(RTRIM(@location_id_list)) + ','
        SET @pos = CHARINDEX(',', @location_id_list, 1)

        IF REPLACE(@location_id_list, ',', '') <> ''
        BEGIN
            WHILE @pos > 0
            BEGIN
                SET @locationId = LTRIM(RTRIM(LEFT(@location_id_list, @pos - 1)))
                IF @locationId <> ''
                BEGIN
                    SET @ordering = @ordering + 1
                    INSERT @TempList (ordering, location_id)
                    VALUES (@ordering, CAST(@locationId AS INT))
                END
                SET @location_id_list = RIGHT(@location_id_list, LEN(@location_id_list) - @pos)
                SET @pos = CHARINDEX(',', @location_id_list, 1)
            END
        END
        SELECT * FROM @TempList
    END
    GO

- In this sample, the ``@meta`` parameter is a list of comma separated values.
  This list is split and added to the temporary table...

  ::

    ALTER PROC [dbo].[save_location_meta] @location_id int, @meta nvarchar(max)
    AS
    BEGIN
        -- Create a temporary table to hold meta data items.
        DECLARE @meta_table TABLE
        (
            brit_trip_item_location_id int,
            meta varchar(MAX)
        )
        -- The meta data items are in comma separated format... so needs to be split...
        DECLARE @pos int
        DECLARE @nextpos int
        DECLARE @valuelen int
        DECLARE @result varchar(100)

        SET @pos = 0
        SET @nextpos = 1
        WHILE @nextpos > 0
        BEGIN
            SET @nextpos = charindex(',', @meta, @pos + 1)
            SET @valuelen =
                CASE
                    WHEN @nextpos > 0 THEN @nextpos
                    ELSE len(@meta) + 1
                END
                - @pos - 1
            SET @result = substring(@meta, @pos + 1, @valuelen)
            SET @pos = @nextpos
            -- If the meta data item exists, then add it to the temporary table.
            IF (LEN(LTRIM(RTRIM(@result))) > 0)
            BEGIN
                INSERT @meta_table(brit_trip_item_location_id, meta)
                VALUES(@location_id, LTRIM(RTRIM(@result)))
            END
        END
        -- The individual meta data items are now in the temporary table.

Database
========

Table - Last Update
-------------------

`Find Last Date Time Updated for Any Table`_

::

  SELECT OBJECT_NAME(OBJECT_ID) AS DatabaseName, last_user_update,*
  FROM sys.dm_db_index_usage_stats
  WHERE database_id = DB_ID( 'my_loyalty')
  AND OBJECT_ID=OBJECT_ID('loyalty_partner')

Except/Intersect
================

`SQL Server - Comparing Tables (Merge, Except, Intersect)`_

To return all rows in ``table1`` that do not match exactly the rows in
``table2``, you can use ``EXCEPT`` ...

::

  select * from table1 except select * from table2

(likewise to find the opposite just reverse the table names above)

To return all rows in ``table1`` that match exactly what is in ``table2``,
using ``INTERSECT``...

::

  select * from table1 intersect select * from table2

Combining the above two... (the following will return the differences)

::

  select 'table1' as tblName, *  from
    (select * from Table1 except select * from Table2) x
  union all
  select 'table2' as tblName, *  from
    (select * from Table2 except select *  from Table1 ) x

Geo
===

Distance Between
----------------

http://blog.tboda.com/post/5-Useful-SQL-Server-Scripts.aspx
(Returns the distance between two points in km):

::

  CREATE FUNCTION [dbo].[DistanceBetween] (
      @Lat1 as real,
      @Long1 as real,
      @Lat2 as real,
      @Long2 as real)
      RETURNS real
  AS
  BEGIN
      DECLARE @dLat1InRad as float(53);
      SET @dLat1InRad = @Lat1 * (PI()/180.0);
      DECLARE @dLong1InRad as float(53);
      SET @dLong1InRad = @Long1 * (PI()/180.0);
      DECLARE @dLat2InRad as float(53);
      SET @dLat2InRad = @Lat2 * (PI()/180.0);
      DECLARE @dLong2InRad as float(53);
      SET @dLong2InRad = @Long2 * (PI()/180.0);
      DECLARE @dLongitude as float(53);
      SET @dLongitude = @dLong2InRad - @dLong1InRad;
      DECLARE @dLatitude as float(53);
      SET @dLatitude = @dLat2InRad - @dLat1InRad;
      /* Intermediate result a. */
      DECLARE @a as float(53);
      SET @a = SQUARE (SIN (@dLatitude / 2.0)) + COS (@dLat1InRad)
          * COS (@dLat2InRad)
          * SQUARE(SIN (@dLongitude / 2.0));
      /* Intermediate result c (great circle distance in Radians). */
      DECLARE @c as real;
      SET @c = 2.0 * ATN2 (SQRT (@a), SQRT (1.0 - @a));
      DECLARE @kEarthRadius as real;
      /* SET kEarthRadius = 3956.0 miles */
      SET @kEarthRadius = 6376.5;        /* kms */
      DECLARE @dDistance as real;
      SET @dDistance = @kEarthRadius * @c;
      return (@dDistance);
  END

Jobs
====

See :doc:`../jobs`.

NULL
====

To check if a value is ``NULL``:

::

  IF @code_product_type IS NULL OR @code_product_type = NULL

Paging
======

Pass in 0 (zero) for page one:

::

  SET ANSI_NULLS ON
  GO
  SET QUOTED_IDENTIFIER ON
  GO
  -- =============================================
  -- Author:       JS
  -- Create date:  8th June 2009
  -- Description:  Returns paginated list of clients.
  --               page_number starts with 0.
  -- =============================================
  CREATE PROCEDURE [dbo].[admin_get_clients_paginated]
      @page_number INT,
      @records_per_page INT
  AS
  BEGIN
      SET NOCOUNT ON;
      WITH data AS (
          SELECT
              ROW_NUMBER() OVER (ORDER BY id) as 'rownum',
              c.* FROM client c WITH(NOLOCK)
      )
      SELECT *
          FROM data
          WHERE rownum
              BETWEEN (@page_number * @records_per_page) + 1
                  AND ((@page_number * @records_per_page) + @records_per_page)
  END

Note: Good idea to write a stored procedure to return the record count.  This
can be used to calculate how many pages to expect.

Stored Procedure
================

::

  From: SL
  Sent: 06 May 2009 18:17
  To: Tech
  Subject: Comparing SPs in SQL

  Hello,

  I though this may be useful. This will compare the code in an SP in the dev
  and staging database and hopefully tell you the differences ?


  declare @spname varchar(100)

  -- Set the SP name here
  set @spname = 'place_bid'

  declare @spdev table (spcode varchar(max))
  declare @spstg table (spcode varchar(max))

  -- Read dev version
  insert into @spdev
  exec my_loyalty_dev.dbo.sp_helptext @spname

  -- Read staging version
  insert into @spstg
  exec my_loyalty.dbo.sp_helptext @spname

  -- Display the differences
  select *
  from @spdev d
  left join @spstg s on d.spcode = s.spcode
  where s.spcode is null


.. _`blog.TBODA.com`: http://blog.tboda.com/post/5-Useful-SQL-Server-Scripts.aspx
.. _`Display Job History`: http://weblogs.sqlteam.com/tarad/archive/2009/06/10/SQL-Server-Script-to-Display-Job-History.aspx
.. _`How to pass a list of values or array to SQL Server stored procedure?`: http://vyaskn.tripod.com/passing_arrays_to_stored_procedures.htm
.. _`Find Last Date Time Updated for Any Table`: http://blog.sqlauthority.com/2009/05/09/sql-server-find-last-date-time-updated-for-any-table/
.. _`SQL Server - Comparing Tables (Merge, Except, Intersect)`: http://blog.davidyardy.com/archive/2009/02/02/42.aspx

