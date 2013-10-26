SQL Server
**********

Install
=======

pyodbc
------

- :doc:`../../python/database/sql-server`

django-pyodbc
-------------

- Use a Subversion client to checkout ``django-pyodbc``:

  ::

    cd \src
    svn checkout http://django-pyodbc.googlecode.com/svn/trunk/ django-pyodbc-read-only

  Note: If using Django 1.0.x then checkout this branch:

  ::

    http://django-pyodbc.googlecode.com/svn/branches/django-1.0.x

- Add ``django-pyodbc`` to ``PYTHONPATH`` (elements separated with
  colons on unix or semicolons on windows):

  ::

    SET PYTHONPATH=C:\SRC\django-pyodbc-read-only\

- Validate the ``PYTHONPATH`` setting:

  ::

    c:\src>python
    >>> import sql_server.pyodbc
    >>>

- If you are using ``mod_python`` (see :doc:`../deploy/deploy`), then the
  source folder will also need to be added to the Apache configuration file,
  ``conf/httpd.conf``:

  ::

    PythonPath "['S:/django', 'S:/src/django-pyodbc-read-only'] + sys.path"

Configuration
=============

- Update the database configuration in ``settings.py``:

  ::

    # e.g. of a remote connection.
    DATABASE_ENGINE = 'sql_server.pyodbc'
    DATABASE_ODBC_DRIVER = 'SQL Server'
    DATABASE_NAME = 'mydb'
    DATABASE_USER = 'myuser'
    DATABASE_PASSWORD = 'Python19'
    DATABASE_HOST = 'app1'
    DATABASE_PORT = ''

  ::

    # e.g. of a local connection.
    DATABASE_ENGINE = 'sql_server.pyodbc'
    DATABASE_ODBC_DRIVER = 'SQL Server'
    DATABASE_NAME = 'location_dev'
    DATABASE_USER = 'sa'
    DATABASE_PASSWORD = 'password'
    DATABASE_HOST = 'localhost'
    DATABASE_PORT = '1433'

  ::

    # e.g. of another local connection.
    DATABASE_ENGINE = 'sql_server.pyodbc'
    DATABASE_ODBC_DRIVER = 'SQL Server'
    DATABASE_NAME = 'mydb'
    DATABASE_USER = 'sa'
    DATABASE_PASSWORD = 'password'
    DATABASE_HOST = r'slinky\SQLEXPRESS'
    DATABASE_PORT = ''
    DATABASE_OPTIONS= {
        'driver': 'SQL Native Client',
        'MARS_Connection': True,
    }

- Auto-generate your models (from the existing database structure):

  ::

    cd \django\project\folder\
    python manage.py inspectdb > \temp\models.py

- Synchronise your database (to create the administrator etc):

  ::

    cd \django\project\folder\
    python manage.py syncdb
