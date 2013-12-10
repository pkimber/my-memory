Schema
******

.. highlight:: bash

::

  psql -X -U postgres -c "DROP DATABASE mydb;"
  psql -X -U postgres -c "CREATE DATABASE mydb WITH OWNER=patrick TEMPLATE=template0 ENCODING='utf-8';"
  psql -X --set ON_ERROR_STOP=on -d mydb -c "CREATE SCHEMA myschema;"

  psql -X -d mydb

  \d myschema.contact
  select firstname, surname from myschema.contact;

Restore
=======

To load data from a ``pg_dump`` into a schema (in this example, the output
from ``pg_dump`` is stored in ``out.sql``):

Create a SQL file (in this example ``out_schema.sql``) which will set the
schema and include the file created by ``pg_dump``::

  set schema 'myschema';
  \i out.sql

Now load the data using the new ``out_schema.sql`` file::

  psql -X --set ON_ERROR_STOP=on -d mydb --file out_schema.sql
