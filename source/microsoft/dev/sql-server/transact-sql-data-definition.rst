Transact-SQL - Data Definition
******************************

Columns
=======

- Remove the ``NULL`` constraint from a column:

  ::

    ALTER TABLE inbound_email
        ALTER COLUMN subject VARCHAR(250) NULL

- Add a column:

  ::

    ALTER TABLE envelope
        ADD deleted_datetime DATETIME NULL

- Rename a column:

  `How to rename a table or column using T-SQL in Microsoft SQL`_

  ::

    EXEC sp_rename
        @objname = 'TableName.OldColumnName',
        @newname = 'NewColumnName',
        @objtype = 'COLUMN'

- Remove a column:

  ::

    ALTER TABLE a DROP COLUMN y

- Remove a constraint (in this example a foreign key):

  ::

    ALTER TABLE a DROP CONSTRAINT FK_a_y

Constraint
==========

Remove/Drop
-----------

::

  ALTER TABLE loyalty_location_search_index_status
      DROP CONSTRAINT FK_loyalty_location_search_index_status_registered_application

Database
========

::

  CREATE DATABASE database_name
  DROP DATABASE database_name

Data Types
==========

boolean
-------

::

  verified BIT NOT NULL

Date
----

::

  DECLARE @currentDate DATETIME

Identity
--------

*Links*

- `Understanding Identity Columns`_

*Create*

::

  IDENTITY [(seed, increment )

- ``seed``, Is the value that is used for the very first row loaded into the
  table.
- ``increment``, Is the incremental value that is added to the identity value
  of the previous row that was loaded.

You must specify both the seed and increment or neither.  If neither is
specified, the default is ``(1,1)``.

*Finding the Value*

::

  SELECT SCOPE_IDENTITY() as NewRec
  SET @id = SCOPE_IDENTITY()

...or to find the last identity value regardless of scope:

::

  SELECT IDENT_CURRENT('MyTableName') as SameRecordAgain

*Inserting Explicit Values*

::

  SET IDENTITY_INSERT MyTableName ON
  INSERT dbo.MyTableName (ID, Name) Values(1, 'Mac the Yak')
  SET IDENTITY_INSERT MyTableName OFF

  Note: You can only turn on ``IDENTITY_INSERT`` for one table per session .

Image
-----

`ntext, text, and image`_: ``ntext``, ``text``, and ``image`` data types will
be removed in a future version of Microsoft SQL Server.  Avoid using these data
types in new development work, and plan to modify applications that currently
use them.  Use ``nvarchar(max)``, ``varchar(max)``, and ``varbinary(max)``
instead.

``NVARCHAR``
------------

Virtually the same as ``VARCHAR``, but stores unicode data.  Takes twice as
much space to store text as the ``VARCHAR``.

`Understanding VARCHAR(MAX) in SQL Server 2005`_ The ``VARCHAR(MAX)``,
``NVARCHAR(MAX)``, and ``VARBINARY(MAX)`` data types can hold the same amount
of data as the ``BLOB`` field (2GB).

Index
=====

Create
------

- Make sure you have a file group for indexes:

  - Right click on the database and select *Properties*.
  - *Filegroups*, *Add*, *Name*: ``INDEXES``.
  - *Files*, *Logical name*, use the database name followed by ``_indexes``
    e.g. ``pottery_indexes``, *File Type*: ``Data``, *Filegroup*: lookup
    file-group created in the previous step (``INDEXES``).  The *File Name*
    will be automatically created.

- Right click on the *Indexes* node and select *New Index...*.

  - Index name, ``idx__`` + *table name* + ``__`` + *field name* + ``__`` +
    *field name*...
  - *Add...* the columns.
  - *Storage*, select the *Filegroup*, ``INDEXES`` (created in the previous
    step).
  - *Options*, *Set fill factor*, ``80`` percent.

  `SQL Server Settings Optimization Tips`_:
  *You can change the 'fill factor' option to the appropriate value.  The 'fill
  factor' option specifies how full SQL Server will make each index page. When
  there is no free space to insert new row on the index page, SQL Server will
  create new index page and transfer some rows from the previous page to the
  new one. This operation is called page splits. You can reduce the number of
  page splits by setting the appropriate fill factor option to reserve free
  space on each index page. The fill factor is a value from 1 through 100 that
  specifies the percentage of the index page to be left empty. The default
  value for fill factor is 0. It is treated similarly to a fill factor value of
  100, the difference in that SQL Server leaves some space within the upper
  level of the index tree for FILLFACTOR = 0. The fill factor percentage is
  used only at the time the index is created. If the table contains read-only
  data (or data that very rarely changed), you can set the 'fill factor' option
  to 100. When the table's data modified very often, you can decrease the 'fill
  factor' option to 70 percent, for example*.

- Sample

  ::

    CREATE NONCLUSTERED INDEX
        [idx__sms_audit__transaction_date__user_account_id]
        ON [dbo].[2009_sms_audit]
    (
        [transaction_date] ASC,
        [user_account_id] ASC
    )
    WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80)
        ON [INDEXES]

Drop
----

::

  DROP INDEX lost_code_log.IDX__lost_code_log__code_text

Table
=====

Create
------

::

  SET ANSI_NULLS ON
  GO
  SET QUOTED_IDENTIFIER ON
  GO
  SET ANSI_PADDING ON
  GO
  CREATE TABLE [dbo].[copy](
    [id] [INT] IDENTITY(1,1) NOT NULL,
    [name] [VARCHAR](100) NOT NULL,
    [text_key_id] [BIGINT] NOT NULL,
    CONSTRAINT [PK_copy] PRIMARY KEY CLUSTERED
    (
      [id] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
  GO
  SET ANSI_PADDING OFF
  GO
  ALTER TABLE [dbo].[copy] WITH CHECK ADD CONSTRAINT [FK_copy_text_key] FOREIGN KEY([text_key_id])
  REFERENCES [dbo].[text_key] ([id])
  GO
  ALTER TABLE [dbo].[copy] CHECK CONSTRAINT [FK_copy_text_key]
  GO

Note:

- ``SET ANSI_NULLS ON``: Specifies SQL-92 compliant behavior of the Equals (=)
  and Not Equal to (**) comparison operators when used with null values.

  When ``SET ANSI_NULLS`` is ``ON``, a ``SELECT`` statement using
  ``WHERE column_name = NULL`` returns zero rows even if there are null values
  in ``column_name``.

- ``SET QUOTED_IDENTIFIER ON``: Follow the SQL-92 rules regarding quotation
  mark delimiting identifiers and literal strings.

  When ``SET QUOTED_IDENTIFIER`` is ``ON``, identifiers can be delimited by
  double quotation marks, and literals must be delimited by single quotation
  marks.

- ``SET ANSI_PADDING ON``: Controls the way the column stores values shorter
  than the defined size of the column, and the way the column stores values
  that have trailing blanks in ``char``, ``varchar``, ``binary``, and
  ``varbinary`` data.

  http://doc.ddart.net/mssql/sql70/set-set_6.htm

- ``GO`` isn't valid T-SQL, it's just a command used by the ``SQLCMD``, (and
  other utilities) that can also be used within Query Analyzer and the Query
  Editor window:

  `Handling GO Separators in SQL Scripts - the easy way`_.

- The login that creates the database is mapped to a special user called
  ``dbo``.  The ``dbo`` is the owner of the database and can not be dropped.
  The ``dbo`` schema is associated with the ``dbo`` user so it cannot be
  dropped.

  The ``sa`` account will represent itself as ``dbo`` in all databases.  To
  check for yourself: ``select user_name()`` when logged in as ``sa``.

- If an identifier does not comply with the naming rules, it is referred to as
  a delimited identifier, and it should be delimited by square brackets
  (``[]``) when referenced in T-SQL statements.

- ``CONSTRAINT``: The CONSTRAINT clause is used to maintain data integrity by
  providing limits on the values that can be inserted into a column or table.

  To place a constraint on a single field in a ``CREATE TABLE`` or
  ``ALTER TABLE`` statement, follow the definition of that field with a
  ``CONSTRAINT`` clause.  This consists of a name for the constraint and one of
  the following reserved words: ``PRIMARY KEY``, ``UNIQUE``, ``NOT NULL`` or
  ``REFERENCES``.

- ``PRIMARY KEY``: This constraint is used to guarantee that a column or set of
  columns on a table contain unique values for every record in the given table.
- ``CLUSTERED``: A clustered index actually stores the data records in physical
  order.  Because a table can only be physically sorted in one order, a table
  can only define one clustered index.
- ``PAD_INDEX``: Specifies that a percentage of space should be left free on
  the non-leaf levels of the index.  The percentage is determined by
  ``FILLFACTOR``.
- ``STATISTICS_NORECOMPUTE``: Specifies that index statistics will not be
  automatically updated.
- ``IGNORE_DUP_KEY``: If ``IGNORE_DUP_KEY`` was specified for the index and an
  ``INSERT`` statement that creates a duplicate key is executed, SQL Server
  issues a warning message and ignores (does not insert) the duplicate row.

  If ``IGNORE_DUP_KEY`` was not specified for the index, SQL Server issues an
  error message and rolls back the entire ``INSERT`` statement.

- ``ALLOW_ROW_LOCKS``: Determines whether row locks are used in accessing index
  data.
- ``ALLOW_PAGE_LOCKS``: Determines whether page locks are used in accessing
  index data.
- ``ON PRIMARY``: *S* says (22/07/2008 13:25:02), *The PRIMARY group tends to
  contain the main data file and we create a new group for INDEXES*.
- ``WITH CHECK``: Specifies whether the data in the table is (or is not)
  validated against a newly added or reenabled ``FOREIGN KEY`` or ``CHECK``
  constraint.

  If not specified, ``WITH CHECK`` is assumed for new constraints, and
  ``WITH NOCHECK`` is assumed for re-enabled constraints.

- ``FOREIGN KEY``: Require that each value in the column exists in the
  specified column in the referenced table.
- ``CHECK CONSTRAINT``: Specifies that constraint_name is enabled or disabled.

  The ``ALL`` parameter, specifies that all constraints are disabled with the
  ``NOCHECK`` option, or enabled with the ``CHECK`` option.

Delete Contents
---------------

Removes all rows from a table without logging the individual row deletes:

::

  TRUNCATE TABLE table_name

Exists
------

`Using T-SQL to Check Whether a Table Exists`_

::

  DECLARE @tableName VARCHAR(100)
  SET @tableName = 'user_account'
  SELECT name FROM sysobjects WITH(NOLOCK) WHERE xtype='u' AND name = @tableName

Rename
------

::

  EXEC sp_rename 'OldTableName', 'NewTableName'

For more details, see *Column*, *Rename* above...

Table Variables (or temporary tables)
-------------------------------------

- `Table Variables In T-SQL`_: Table variables can be used as an alternative to
  using temporary tables:
- `How Table Variables Can Speed Up Your Queries`_
- `SQL - Temporary Tables`_ *Generally, temporary tables should be avoided as
  much as possible*.

::

  DECLARE @metaTable TABLE
  (
      location_id INT,
      meta VARCHAR(MAX)
  )


.. _`How to rename a table or column using T-SQL in Microsoft SQL`: http://dustyreagan.com/how-to-rename-table-or-column-using-t/
.. _`Understanding Identity Columns`: http://www.sqlteam.com/article/understanding-identity-columns
.. _`ntext, text, and image`: http://msdn.microsoft.com/en-us/library/ms187993.aspx
.. _`Understanding VARCHAR(MAX) in SQL Server 2005`: http://www.teratrax.com/articles/varchar_max.html
.. _`SQL Server Settings Optimization Tips`: http://www.mssqlcity.com/Tips/tipSrvSet.htm
.. _`Handling GO Separators in SQL Scripts - the easy way`: http://weblogs.asp.net/jgalloway/archive/2006/11/07/Handling-_2200_GO_2200_-Separators-in-SQL-Scripts-_2D00_-the-easy-way.aspx
.. _`Using T-SQL to Check Whether a Table Exists`: http://www.devx.com/tips/Tip/28034
.. _`Table Variables In T-SQL`: http://www.odetocode.com/Articles/365.aspx
.. _`How Table Variables Can Speed Up Your Queries`: http://msdn2.microsoft.com/en-us/library/aa175774(SQL.80).aspx
.. _`SQL - Temporary Tables`: http://blog.techsvr.com/?p=12

