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

If you are **not** using a virtual environment, then this will work:

::

  apt-get install python-psycopg2

Windows
-------

A Windows port of the interface (which includes an installer) can be
downloaded from
http://www.stickpeople.com/projects/python/win-psycopg/index.html:

::

  psycopg2-2.0.8.win32-py2.5-pg8.3.4-release.exe

*Run as administrator* on Vista.

Sample
------

::

  import psycopg2
  dsn = 'host=storagebox dbname=pjk_temp user=patrick password=mypass'
  conn = psycopg2.connect(dsn)
  cursor = conn.cursor()
  cursor.execute('select * from client')
  data = cursor.fetchone()
  print data

Note: If the server is set-up to use ``ident`` based authentication, then
connect by leaving out the ``host`` and ``password`` e.g:

::

  dsn = 'dbname=production user=patrick'


.. _`pg8000 is a Pure-Python interface to the PostgreSQL database engine`: http://pybrary.net/pg8000/
