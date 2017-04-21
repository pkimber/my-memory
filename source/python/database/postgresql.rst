PostgreSQL
**********

Links
=====

- http://initd.org/projects/psycopg2
- `pg8000 is a Pure-Python interface to the PostgreSQL database engine`_.

psycopg
=======

Install
-------

My notes in :doc:`../pip/install-modules`.

If you are **not** using a virtual environment, then this will work::

  apt-get install python-psycopg2

Sample
------

Using a context manager::

  import psycopg2

  DSN = 'dbname=conversion user=postgres'

  conn = psycopg2.connect(DSN)

  with conn:
      with conn.cursor() as curs:
          sql = 'select * from client'
          curs.execute(sql)
          data = curs.fetchone()
          print(data)

::

  import psycopg2
  dsn = 'host=storagebox dbname=pjk_temp user=patrick password=mypass'
  conn = psycopg2.connect(dsn)
  cursor = conn.cursor()
  cursor.execute('select * from client')
  data = cursor.fetchone()
  print data

Note: If the server is set-up to use ``ident`` based authentication, then
connect by leaving out the ``host`` and ``password`` e.g::

  dsn = 'dbname=production user=patrick'

Parameters::

  sql = (
      "INSERT INTO user_map_legacy_to_new( "
      "user_name, email, old_id, new_pk) VALUES (%s, %s, %s, %s)"
  )
  cursor = conn.cursor()
  cursor.execute(sql, [name, email, uid, user_pk])
  cursor.close()

Transactions
------------

If don't want to have to commit each entry to the database, you can set the
``autocommit`` property on the connection e.g::

  conn = psycopg2.connect('dbname=test_import user=postgres')
  conn.autocommit = True

Windows
-------

A Windows port of the interface (which includes an installer) can be downloaded
from http://www.stickpeople.com/projects/python/win-psycopg/index.html::

  psycopg2-2.0.8.win32-py2.5-pg8.3.4-release.exe

*Run as administrator* on Vista.


.. _`pg8000 is a Pure-Python interface to the PostgreSQL database engine`: http://pybrary.net/pg8000/
