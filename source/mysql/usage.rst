Usage
*****

Database
========

Create
------

::

  mysql --user=root --password=mypass
  CREATE DATABASE quickstart;

List
----

::

  bin\mysql
  SHOW DATABASES;

Use
---

::

  USE quickstart;

Script
======

::

  bin\mysql -u root < script.sql
