Data Definition
***************

.. highlight:: sql

Alter Table
===========

Column - Add
------------

- `ALTER TABLE Syntax`_

::

  ALTER TABLE thread ADD archived BOOL NOT NULL;
  ALTER TABLE thread ADD COLUMN status CHAR(5) DEFAULT NULL AFTER archived;
  ALTER TABLE thread ADD COLUMN pk INT NOT NULL AUTO_INCREMENT UNIQUE FIRST;

Note: If you need to specify the column name in quotes, then enclose in the
back-tick (not the normal single quote) e.g:

::

  ALTER TABLE order ADD COLUMN `currency_id` INTEGER NOT NULL;

Column - Change
---------------

To rename a column (this example also adds a couple of columns):

::

  ALTER TABLE village
    ADD COLUMN
      area DOUBLE DEFAULT NULL,
    ADD COLUMN
      volume DOUBLE DEFAULT NULL,
    CHANGE COLUMN
      width
      old_width DOUBLE NOT NULL

**Note**: Don't forget the ``,`` comma between each ``ADD``, ``DROP`` and
``CHANGE``.

Column - Drop
-------------

::

  ALTER TABLE address DROP COLUMN mobile;

.. _`ALTER TABLE Syntax`: http://dev.mysql.com/doc/refman/5.1/en/alter-table.html

Index
-----

::

  ALTER TABLE village DROP PRIMARY KEY;
  CREATE UNIQUE INDEX idx_name_age ON village (name, age);

View
====

Columns
-------

::

  SHOW COLUMNS FROM address;

Create Table
============

::

  CREATE TABLE fruit (
    pk INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    age VARCHAR(45) DEFAULT NULL,
    description VARCHAR(45) DEFAULT NULL,
    PRIMARY KEY (pk),
    UNIQUE KEY idx_name_age (name, age),
    UNIQUE KEY idx_name (name),
    KEY idx_age_description (age, description)
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1

Copy the structure of an existing table:

::

  CREATE TABLE backup_recipes LIKE recipes

Fields
======

::

  isBlue BOOLEAN DEFAULT False
