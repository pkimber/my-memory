Backup and Restore
******************

Backup
======

To backup a database:

::

  pg_dump --oids --file trac_data.dump trac_data

========  ===============
--oids    Dump oid's
--file    Dump filename
========  ===============

To set the user name and password (and to export blobs):

::

  SET PGPASSWORD=my-password
  pg_dump.exe --oids --blobs --username=my-user-name --file trac_data.dump trac_data

`Click here for other parameters`_

Other
-----

Will do a basic dump of the database

::

  pg_dump dbname > outfile

To also dump the OID's:

::

  pg_dump test -o

**Note:** These commands do not dump large objects.

Restore
=======

Method 1
--------

To restore the database:

::

  psql -d tod2005jun2nd -f tod2005jun2nd.dump 2> tod2005jun2nd.log

psql - click here for more information... :doc:`psql`.

Method 2
--------

If the dump file is in PostgreSQL binary format:

::

  createdb temp1
  pg_restore -d temp1 testing.dump.1


.. _`Click here for other parameters`: http://www.postgresql.org/docs/8.0/static/app-pgdump.html
