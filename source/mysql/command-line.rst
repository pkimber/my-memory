Command Line
************

Getting Started
===============

::

  cd C:\Program Files\MySQL\MySQL Server 5.1\bin
  mysql -u root -p

Database
--------

::

  use test

To log into a ``test`` database on start-up:

::

  cd C:\mysql-5.1.35-win32\bin
  mysql test

Exit
====

::

  mysql> \q

Help
====

::

  mysql> \h

History
=======

``mysql`` command line history is stored in:

::

  ~/.mysql_history

Options
=======

To display SQL results in a vertical format:

::

  SELECT * FROM contact WHERE id = 2\G

Schema
======

- See :doc:`schema`.

Script
======

To run all the commands in a script:

::

  mysql db_name < script.sql
  mysql db_name -t < script.sql > output.tab
  mysql db_name -e "SELECT * FROM client"

...or from the ``mysql`` prompt:

::

  mysql> source ~/temp/temp.sql

**Note**: Probably best to write a quick python script if you want the data in
a specific format e.g. tab separated.

Variables
=========

::

  SET @itemId = 'C123';
  SELECT * FROM items WHERE id = @itemId;
