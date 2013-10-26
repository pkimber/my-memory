Server
******

Download
========

Download ``hsqldb_1_8_0_7.zip`` from http://hsqldb.org/

Install
=======

Extract to:

::

  C:\tools\hsqldb\

Start
=====

Change into the ``data`` folder before starting the database:

::

  cd C:\tools\hsqldb\data\
  java -cp ../lib/hsqldb.jar org.hsqldb.Server -database.0 mydb -dbname.0 xdb

