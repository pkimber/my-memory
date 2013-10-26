Database
********

PostgreSQL
==========

Install PostgreSQL - :doc:`../../../postgresql/install`

Configure PostgreSQL - :doc:`../../../postgresql/configuration`

::

  psql postgres postgres
  CREATE USER trac WITH PASSWORD 'admin' CREATEDB;
  CREATE DATABASE my_test_trac OWNER trac;

Install psycopg - :doc:`../../database/postgresql`

To test the driver:

::

  import psycopg2
  dsn = 'dbname=my_test_trac user=trac password=admin'
  conn = psycopg2.connect(dsn)
  cursor = conn.cursor()
  cursor.execute('select * from pg_user')
  cursor.fetchall()
  print data

Note: If you are connecting through TCP/IP, then you might need to use a DSN
like this:

::

  dsn = 'host=localhost dbname=my_test_trac user=trac password=admin'

SQLite to PostgreSQL
====================

`SQLite to PostgreSQL Script`_

Download ``sqlitetopgscript.zip`` from
http://trac-hacks.org/wiki/SqliteToPgScript.

The Wiki says *this script works with 0.11... at least it did for me*.

Extract the ``sqlite2pg`` python script.  Make sure it will run:

::

  python \src\sqlitetopgscript\0.10\sqlite2pg --help
  python \src\sqlitetopgscript\0.10\sqlite2pg --version

Run the script:

::

  python \src\sqlitetopgscript\0.10\sqlite2pg --pg_uri="postgres://trac:admin@localhost/my_test_trac" --tracenv="C:/repository/trac/my-test-trac" --sqlite_uri="sqlite:C:/repository/trac/my-test-trac/db/trac.db"

**Note**: The ``help`` suggests using single quotes for the command line
parameters - but you need to use double quotes!

Update the ``trac.ini`` configuration file:

::

  database = postgres://trac:admin@localhost/my_test_trac

`Database Connection Strings`_


.. _`SQLite to PostgreSQL Script`: http://trac-hacks.org/wiki/SqliteToPgScript
.. _`Database Connection Strings`: http://trac.edgewall.org/wiki/TracEnvironment#DatabaseConnectionStrings
