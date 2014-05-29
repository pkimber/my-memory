psql
****

Links
=====

- psql_

Load
====

To load a text file into a PostgreSQL database::

  psql -d Support2005May5th -f SupportBackUp2005May5th.out 2> log2005May5th.out

In this example:

==  ===========  ================  ================================
-d  dbname       Database name     Support2005May5th
-f  filename     Text/import file  SupportBackUp2005May5th.out
                 Error log         log2005May5th.out
==  ===========  ================  ================================

Commands
========

To run SQL commands on a database::

  psql support2005

**Note:** Don't forget to add a semi-colon on the end of each command.

psql
----

=================================== =================
List databases                      ``\l``
List databases (table space)        ``\l+``
List tables                         ``\d``
List tables (in a schema)           ``\dt myschema.*``
List table-spaces                   ``\db``
List schemas                        ``\dn``
List users and their roles          ``\du``
To view a table definition:         ``\d guser;``
To view command history:            ``\s``
Quit                                ``\q``
**One field per line**              ``\x``
Use database                        ``\c <db name>``
=================================== =================

To run a single SQL command::

  echo 'select userinitials from guser' | psql -d Support2005May5th

or::

  psql -d Support2005May5th -c 'select userinitials from guser'

To run SQL from a file::

  psql mydbname -f ~/temp/sales_order.sql

To hide the column headers etc::

  psql mydbname -A -t -f ~/temp/sales_order.sql

To write output to a file (in this example a list of tables) (you have to
``\q`` to write the buffer)::

  psql mydb
  mydb=> \o temp.out
  mydb=> \dt
  mydb=> \q

Remote
======

To connect to the remote server ``storagebox``::

  psql -h storagebox postgres

User
====

Login to postgresql as a user (in this example, ``my_user_name``)::

  psql my_database my_user_name

Variables
=========

::

  # \set location_id 398

.. note::

  The ``set`` command must be in lower case.  To view variables, just type
  ``\\set``.

  Do **NOT** put a semi-colon after the variable name on ``set`` commands.
  The semi-colon will be included in the variable.

To use the variable::

  \set location_id 398
  SELECT ... WHERE location_id = :location_id;


.. _psql: http://www.postgresql.org/docs/8.0/static/app-psql.html
