Schema
******

.. highlight:: sql

Databases
=========

::

  mysql> SHOW DATABASES;

::

  CREATE DATABASE social_2010_04_16;

Table
=====

Copy
----

::

  CREATE TABLE supplier LIKE client;

Details
-------

::

  DESCRIBE feature;
  SHOW CREATE TABLE feature;

List
----

::

  mysql> SHOW TABLES;

Rename
------

::

  RENAME TABLE product_productvariation TO configurable_productvariation;

Status
------

Shows alot of information about each non-temporary table (e.g. number of
rows)::

  SHOW TABLE STATUS;
