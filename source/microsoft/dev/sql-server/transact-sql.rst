Transact-SQL
************

Links
=====

- `Sometimes abbreviated T-SQL, Transact-SQL is Microsoft's and Sybase's proprietary extension to the SQL language`_.

Quick Reference
---------------

- `Transact-SQL Reference`_:

Cursors
=======

Sample script:

::

  ../../misc/howto/microsoft/sort_out_duplicate_address.sql

::

  DECLARE @currentDate DATETIME
  DECLARE dateRangeCursor CURSOR LOCAL FOR
      SELECT calendar.cal_date
          FROM getCalendarTable('2008-08-20', '2008-08-26') calendar
          ORDER BY calendar.cal_date

  OPEN dateRangeCursor
  FETCH NEXT FROM dateRangeCursor INTO @currentDate
  WHILE @@Fetch_status = 0
  BEGIN
      PRINT @currentDate
      FETCH NEXT FROM dateRangeCursor INTO @currentDate
  END
  CLOSE dateRangeCursor
  DEALLOCATE dateRangeCursor

Note: For more details on ``getCalendarTable`` see
:doc:`snippets/code-snippets`.

Database
========

Multiple Databases
------------------

`Run The Same SQL Command Against All SQL Server Databases`_

::

  DECLARE @command varchar(1000)
  SET @command = '
  USE ?
  IF EXISTS (SELECT [name] FROM sysobjects WITH(NOLOCK) WHERE xtype=''u'' AND [name] = ''property'')
  BEGIN
    SELECT ''?'', [value] FROM [property] WITH(NOLOCK) WHERE [name] = ''delivery_listener_port''
  END
  '
  EXEC sp_MSforeachdb @command

Data Definition
===============

See data definition, :doc:`transact-sql-data-definition`.

Extensions
==========

=================== ======================================================================
``GO``              Signals the end of a batch of Transact-SQL statements
``USE {database}``  Changes the database context to the specified database (or snapshot).
=================== ======================================================================

Delete
======

`TRUNCATE TABLE`_

::

  TRUNCATE TABLE name

Removes all rows from a table without logging the individual row deletes.

Exec
====

`Changing exec to sp_executesql`_ doesn't provide any benefit if you are not
using parameters correctly:

::

  DECLARE @Col2 SMALLINT, @Col1 INT
  SELECT @Col2 = 3,@Col1 = 4

  DECLARE @SQL NVARCHAR(1000)
  SELECT @SQL = 'SELECT * FROM dbo.test
      WHERE Col2 = @InnerCol2 AND Col1 = @InnerCol1'

  DECLARE @ParmDefinition NVARCHAR(500)
  SET @ParmDefinition = N'@InnerCol2 SMALLINT ,@InnerCol1 INT'

  EXEC SP_EXECUTESQL @SQL, @ParmDefinition,
      @InnerCol2=@Col2,
      @InnerCol1=@Col1

Output parameter:

::

  DECLARE @TableName VARCHAR(100),
      @TableCount INT,
      @SQL NVARCHAR(100)

  SELECT @TableName = 'Test'
  SELECT @SQL = N'SELECT @InnerTableCount = COUNT(*) FROM ' + @TableName

  EXEC SP_EXECUTESQL @SQL, N'@InnerTableCount INT OUTPUT', @TableCount OUTPUT
  SELECT @TableCount

Functions
=========

`SQLTeam, User Defined Functions`_

Define
------

See examples in :doc:`snippets/code-snippets`.

Execute
-------

To call this function:

::

  SELECT dbo.formatPostcode('AB20 3CD')

CHARINDEX
---------

Returns the starting position of the specified expression in a character
string:

::

  CHARINDEX(expression1, expression2 [, start_location])

- ``expression1`` the sequence of characters to be found.
- ``expression2`` usually a column that is searched for the specified sequence.
- ``start_location`` is the character position to start searching for
  ``expression1`` in ``expression2``.  If start_location is not given, is a
  negative number, or is zero, the search starts at the beginning of
  ``expression2``.
- Useful with ``SUBSTRING`` (see below).

*Sample*

::

  SELECT CHARINDEX('wonderful', notes)
  FROM titles
  WHERE title_id = 'TC3218'

CHECKSUM
--------

CHECKSUM_

::

  DECLARE @checksumFromDateMessageId INT
  SET @checksumFromDateMessageId = CHECKSUM(@fromAddress, @receivedDatetime, @messageId)

CONVERT
-------

CONVERT_

::

  CONVERT (data_type [(length)], expression[,style])

- ``expression`` Is any valid expression.
- ``data_type`` Is the target data type.
- ``length`` Is an optional integer that specifies the length of the target
  data type. The default value is 30.
- ``style`` can be used to format dates etc...

*Sample*

::

  convert(varchar(50), description)

DATEADD
-------

`DATEADD (T-SQL)`_

Yesterday...

::

  DATEADD(day, -1, GETDATE())

DATEDIFF
--------

Returns the count of the specified ``datepart`` boundaries crossed between the
specified ``startdate`` and ``enddate``:

::

  DATEDIFF(datepart, startdate, enddate)
  SELECT DATEDIFF(hour, '2005-12-31 15:00:00', '2005-12-31 22:30:00')

DATENAME
--------

DATENAME_

This example extracts the month name from the date returned by ``GETDATE``:

::

  SELECT DATENAME(month, GETDATE()) AS 'Month Name'
  SELECT DATENAME(weekday, GETDATE()) AS 'Week Day'

DATEPART
--------

DATEPART_

::

  SELECT DATEPART([day], GETDATE()) AS 'Day'
  SELECT DATEPART([month], GETDATE()) AS 'Month'
  SELECT DATEPART([hour], GETDATE()) AS 'Hour'
  SELECT DATEPART([year], GETDATE()) AS 'Year'
  SELECT DATEPART([weekday], GETDATE()) -- e.g. 4 (or 5) for Thursday

GETDATE
-------

Current date/time (now):

::

  GETDATE()

IS NULL
-------

::

  IF @ingredient1 IS NULL
  BEGIN

Note: Also worth reviewing :doc:`snippets/code-snippets`, ``NULL``.

ISNULL
------

**Note**: To check if a value is ``NULL`` or not:
``IF @promo_terms IS NOT NULL``.

Replaces ``NULL`` with the specified replacement value.

This example substitutes the value $10.00 for all ``NULL`` entries in the
``price`` column:

::

  ISNULL(price, $10.00)

Note:

- The value of ``check_expression``
  (``ISNULL(check_expression, replacement_value)``) is returned if it is not
  ``NULL``; otherwise, ``replacement_value`` is returned after it is implicitly
  converted to the type of ``check_expression``, if the types are different.

LOWER
-----

::

  LOWER(@firstName)

REPLACE
-------

REPLACE_

Replaces all occurrences of a specified string value with another string value.

::

  REPLACE(string_expression1, string_expression2, string_expression3)

- ``string_expression1``.  Is the string expression to be searched.
- ``string_expression2``.  Is the substring to be found.
- ``string_expression3``.  Is the replacement string.
- Returns ``NULL`` if any one of the arguments is ``NULL``.

*Sample*

Remove spaces from a string:

::

  REPLACE(body, ' ', '')

SUBSTRING
---------

Return part of a character, binary, text, or image expression:

SUBSTRING_

::

  SUBSTRING(expression, start, length)

- ``expression`` Is a character string or an expression that includes a column.
- ``start`` Is an integer that specifies where the substring starts.
- ``length`` Is a positive integer that specifies how many characters of the
  expression will be returned.
- also see ``CHARINDEX`` (above).

*Sample*

::

  SUBSTRING(CAST(text as NVARCHAR(MAX)), 4, LEN(CAST(text as NVARCHAR(MAX))))

UPPER
-----

::

  UPPER(@gonzoBody)

Select
======

Correlated Subquery
-------------------

`Using a Correlated Subquery`_:

::

  SELECT CustNum, CompanyName, SortName,
    (
      SELECT MAX(CCL.ContactDate)
        FROM tblCustContactLog CCL
        WHERE (CCL.CustNum = Cust.CustNum)
        AND (CCL.TypeDesc = 'Action')
    ) AS LastContactDate, Manager, Phone1, PhoneT1, PhoneD1
    FROM tblCustomer AS Cust
    WHERE (Cust.Active = 1) AND
      (Cust.TestCustomer = 0)
    ORDER BY LastContactDate

INTO
----

`The SELECT INTO Statement...`_

The ``SELECT INTO`` statement is most often used to create backup copies of
tables or for archiving records.

The following example makes a backup copy of the ``Persons`` table:

::

  SELECT * INTO temp_backup_persons_pjk_2008_04_10 FROM persons

*Database Copy*

To copy a table to another database (probably on the same server):

::

  SELECT * INTO livedata.dbo.temp_pjk FROM demodata.dbo.temp_pjk

Note: This query will only transfer the schema and data. It does not transfer
the indexes, foreign keys, statistics etc...

Multi Value
-----------

To assign multiple values to variables:

::

  SELECT @latitude = latitude, @longitude = longitude
      FROM addresses.postcode_district WITH(NOLOCK)
      WHERE areacode = @lookup

Rank and Row Number
-------------------

::

  -- DROP TABLE [dbo].[learn_sql_scoreboard]
  SET ANSI_NULLS ON
  SET QUOTED_IDENTIFIER ON
  SET ANSI_PADDING ON
  GO
  CREATE TABLE [dbo].[learn_sql_scoreboard](
    [id] [INT] IDENTITY(1,1) NOT NULL,
    [name] [VARCHAR](100) NOT NULL,
    [score] [INT] NOT NULL,
    CONSTRAINT [PK_learn_sql_scoreboard] PRIMARY KEY CLUSTERED
    (
      [id] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
  GO
  INSERT learn_sql_scoreboard WITH(UPDLOCK ROWLOCK) ([name], score)
  VALUES('Martin', 2)
  INSERT learn_sql_scoreboard WITH(UPDLOCK ROWLOCK) ([name], score)
  VALUES('Peter', 10)
  INSERT learn_sql_scoreboard WITH(UPDLOCK ROWLOCK) ([name], score)
  VALUES('Alison', 1)
  INSERT learn_sql_scoreboard WITH(UPDLOCK ROWLOCK) ([name], score)
  VALUES('Barry', 2)
  GO
  SELECT * FROM learn_sql_scoreboard WITH(NOLOCK)
  -- id name  score
  -- 1  Martin    2
  -- 2  Peter    10
  -- 3  Alison    1
  -- 4  Barry     2
  GO
  SELECT *,
    RANK() OVER (ORDER BY score) AS 'Rank',
    ROW_NUMBER() OVER (ORDER BY score) AS 'RowNumber'
    FROM learn_sql_scoreboard WITH(NOLOCK)
    -- WHERE score > 1
    ORDER BY id
  -- id name  score   Rank  RowNumber
  -- 1  Martin    2   2     3
  -- 2  Peter    10   4     4
  -- 3  Alison    1   1     1
  -- 4  Barry     2   2     2

Wildcard
--------

``%`` will match any string of zero or more characters.  To find all book
titles with the word *computer* anywhere in the book title:

::

  WHERE title LIKE '%computer%'

Security
========

SQL Injection
-------------

Look at the ``REPLACE`` and ``QUOTENAME`` functions...

Stored Procedures
=================

Create
------

Sample (showing more than one parameter):

::

  SET ANSI_NULLS ON
  SET QUOTED_IDENTIFIER ON
  GO

  CREATE PROC [dbo].[sample_procedure_name]
      @code_id INT, @user_id INT
  AS
  BEGIN
      SET NOCOUNT ON
      SELECT * FROM sample_table WHERE code_id = @code_id AND user_id = @user_id;
  END

Escape
------

::

  SET @sql = @sql + N'WHERE first_name = ''' + @first_name + ''' AND surname = ''' + @surname + ''''

Execute
-------

::

  EXEC sample_procedure_name @code_id = 'A1'

Parameters
----------

String parameters are declared as follows:

::

  @name VARCHAR(50)

*Default*

::

  @voucher VARCHAR(MAX) = ''

*Output*

Output parameters are used in a stored procedure like this:

::

  CREATE PROC allocate_code
    @user_account_id int,
    @new_code varchar(7) OUTPUT
  AS

...to access the result of this stored procedure:

::

  DECLARE @result VARCHAR(50)
  EXEC allocate_code @user_account_id = 1, @new_code = @result OUTPUT
  SELECT @result

...or this (which I can't get working):

::

  DECLARE @result VARCHAR(50)
  EXEC @result = EXEC allocate_code @user_account_id = 1
  SELECT 'Return Value' = @result

Unicode
=======

Unicode character constants are prefixed with "``N``":

::

  insert Contacts(ContactId, Name, Note, Resume)
  values (N'CO-92-81', N'Tom Jones', N'Tom@trigonblue.com', N'N/a'

Result
------

To get the result of a stored procedure:

::

  DECLARE @countCoke INT
  DECLARE @countTable TABLE
  (
    total INT
  )
  INSERT @countTable(total)
  EXEC remove_brand_name_flavours coke

  SET @countCoke = (SELECT total FROM @countTable)
  PRINT @countCoke

Note: Yes, this is hard to believe... for more information see:

- `Return Recordsets from Dynamic Queries called by EXEC`_
- `Getting Creative with EXEC and EXEC()`_

Union
=====

::

  SELECT Name, City FROM Suppliers
      WHERE Country = 'Mexico'
      UNION
          SELECT Name, City FROM Customers
              WHERE Country = 'Mexico'


.. _`Sometimes abbreviated T-SQL, Transact-SQL is Microsoft's and Sybase's proprietary extension to the SQL language`: http://en.wikipedia.org/wiki/Transact-SQL
.. _`Transact-SQL Reference`: http://msdn2.microsoft.com/en-us/library/ms189826.aspx
.. _`Run The Same SQL Command Against All SQL Server Databases`: http://www.mssqltips.com/tip.asp?tip=1414
.. _`TRUNCATE TABLE`: http://msdn.microsoft.com/en-us/library/aa260621(SQL.80).aspx
.. _`Changing exec to sp_executesql`: http://blogs.lessthandot.com/index.php/DataMgmt/DataDesign/changing-exec-to-sp_executesql-doesn-t-p
.. _`SQLTeam, User Defined Functions`: http://www.sqlteam.com/article/user-defined-functions
.. _CHECKSUM: http://msdn.microsoft.com/en-us/library/ms189788.aspx
.. _CONVERT: http://msdn2.microsoft.com/en-us/library/ms187928.aspx
.. _`DATEADD (T-SQL)`: http://doc.ddart.net/mssql/sql70/da-db_5.htm
.. _DATENAME: http://msdn2.microsoft.com/en-us/library/aa258263(SQL.80).aspx
.. _DATEPART: http://msdn2.microsoft.com/en-us/library/ms174420.aspx
.. _REPLACE: http://msdn2.microsoft.com/en-us/library/ms186862.aspx
.. _SUBSTRING: http://msdn2.microsoft.com/en-us/library/ms187748.aspx
.. _`Using a Correlated Subquery`: http://blog.niemiec.us/2007/11/25/TSQLUsingACorrelatedSubquery.aspx
.. _`The SELECT INTO Statement...`: http://www.w3schools.com/sql/sql_select_into.asp
.. _`Return Recordsets from Dynamic Queries called by EXEC`: http://www.sqlteam.com/article/return-recordsets-from-dynamic-queries-called-by-exec
.. _`Getting Creative with EXEC and EXEC()`: http://msdn.microsoft.com/en-us/library/aa175921(SQL.80).aspx

