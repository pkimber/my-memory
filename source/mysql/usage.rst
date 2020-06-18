Usage
*****

.. highlight:: bash

::

  mysql --user=root --pass=mypass --host=192.168.0.21 mydb

Database
========

Create
------

::

  mysql --user=root --pass=mypass
  CREATE DATABASE quickstart;

List
----

::

  bin\mysql
  SHOW DATABASES;
  SHOW TABLES;
  SHOW COLUMNS FROM my_table;

Use
---

::

  USE quickstart;

Pagination
----------

Use ``less`` for paging::

  pager less

Script
======

::

  bin\mysql -u root < script.sql
