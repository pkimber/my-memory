Command Line
************

Links
=====

- http://www.sqlite.org/sqlite.html
  sqlite3: A command-line access program for SQLite databases.

Install
=======

::

  sudo apt-get install sqlite3

Getting Started
===============

::

  sqlite3 my.db
  sqlite> .tables
  sqlite> SELECT * FROM monitor;
  sqlite> .quit

SELECT
------

Set the mode so we can see the data in columns:

::

  sqlite> .headers on
  sqlite> .mode column
  sqlite> SELECT * FROM monitor;

Schema
======

::

  sqlite3 ~/repo/sqlite/demo.db
  sqlite> .tables
  sqlite> .schema client_info
