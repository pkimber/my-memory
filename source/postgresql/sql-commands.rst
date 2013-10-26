SQL Commands
************

Administration
==============

Database
--------

*Command line*

::

  createdb cs01test8122
  dropdb cs01test8122

*SQL*

::

  CREATE DATABASE tractime WITH owner patrick;
  DROP DATABASE tractime;

User
----

To create a new database user - run psql

::

  CREATE USER patrick;

You can then log in as that user and manipulate the database - but it does not
work - I get *permission denied*:

::

  DROP USER patrick

The following creates a database user who is allowed to create databases..

::

  CREATE USER patrick CREATEDB
  CREATE USER patrick WITH PASSWORD 'password' CREATEDB;

The following creates a database superuser!!

::

  CREATE USER patrick CREATEUSER

To give permission for a user to access a table:

::

  GRANT ALL ON "table_name" TO "postgres";

To change a users password:

::

  ALTER USER davide WITH PASSWORD 'hu8jmn3';

Foreign Key
===========

To add a foreign key constraint:

::

  alter table task add constraint task_usercode foreign key(usercode) references developer(usercode);

To remove the constraint:

::

  alter table task drop constraint task_usercode;

MetaData
========

http://www.postgresql.org/docs/8.0/static/information-schema.html

Field
-----

To find field information (equivalent to DDF):

::

  select column_name from information_schema.columns where table_name ilike 'test_pat';

Table
-----

To find table information (equivalent to DDF):

::

  select table_name from information_schema.tables where table_type = 'BASE TABLE' and table_schema = 'public'

or

::

  select table_name from information_schema.tables where table_type = 'BASE TABLE' and table_schema = 'public' and table_name ilike 'VIEW%'

Version
-------

Can be found by using psql

::

  SELECT version();

Case
====

http://www.postgresql.org/docs/8.0/static/functions-matching.html

Case Sensitive
--------------

To do a case sensitive wildcard match on a table:

::

  like 'VIEW%'

Case Insensitive
----------------

(This is not in the SQL standard but is a PostgreSQL extension):

::

  ilike 'VIEW%'

Conversion
==========

General
-------

::

  cast('123' as text)
  cast('1964-09-22' as date)
  cast(40 as integer)
  cast(1 as smallint)
  cast('12:34:55' as time)

Boolean
-------

::

  CASE WHEN 2 > 0 THEN True ELSE False END

Null
----

::

  cast(null as integer)
  cast(null as date)

Conditional
-----------

::

  case when de.TimePeriod = 'Y'
  then dc.timestart
  else cast(null as time)
  end

Date
====

To select the current date and time:

::

  current_date
  current_time

To specify a date in a query:

::

  select * from timebank where timedate >= '2005-4-01' and timedate <= '2005-4-30'

or:

::

  select * from timebank tb where tb.timedate between nl.startdate and nl.enddate;

`Using BETWEEN`_

::

  SELECT isbn FROM stock WHERE cost BETWEEN 10 AND 17;

You can achieve the same output using the less-than-or-equal-to operator (<=)
in conjunction with the greater-than-or-equal-to (>=) operator:

::

  SELECT isbn FROM stock WHERE cost >= 10 AND cost <= 17;

String
======

Concatenate
-----------

::

  'a' || 'b'

Substring
---------

This command gets the first 100 characters of the ``notes`` field:

::

  Substring(notes from 0 for 100)


.. _`Using BETWEEN`: http://www.faqs.org/docs/ppbook/c7547.htm#USINGBETWEEN

