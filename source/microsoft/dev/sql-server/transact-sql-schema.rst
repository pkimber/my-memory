Transact-SQL - Schema
*********************

Stored Procedures
=================

::

  SELECT * FROM sys.procedures ORDER BY [name]

Tables
======

::

  EXEC sp_tables @TABLE_TYPE="'TABLE'"
  SELECT name, user_name(uid), * FROM sysobjects WHERE type='U'

