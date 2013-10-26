Microsoft - SQL Server
**********************

Links
=====

- :doc:`../../django/database/sql-server`

Driver
======

Probably best to go for http://code.google.com/p/pyodbc/.  I am using this
driver because it is recommended by SQLAlchemy_ and used in the Django SQL
Server driver.

Install
=======

**Note**: To install in a virtual environment, see *Issues*, ``virtualenv``
below...

- Download ``pyodbc`` (``pyodbc-2.1.2.win32-py2.5.exe``) from
  http://code.google.com/p/pyodbc/
- Install ``pyodbc`` (Run as administrator).

Usage
=====

Parameters
----------

::

  first_name = '%%%s%%' % first_name
  last_name = '%%%s%%' % last_name
  sql = '''
      SELECT TOP 10 * FROM crm_user WITH(NOLOCK)
          WHERE first_name LIKE ? AND last_name LIKE ?
  '''
  data = db.fetchall(sql, (first_name, last_name,))

Note: This example also shows how to escape the ``%`` character.  The
standard parameter placeholder is the ``?`` character.

Issues
======

``virtualenv``
--------------

I had lots of problems installing into a virtual environment.  I couldn't use
``easy_install`` or ``pip`` because I needed Microsoft Visual Studio 2003.
The Windows installer will only install into the default environment.

In the end, the solution I found was to install ``pyodbc`` into my default
environment, then create the virtual environment **without** the
``--no-site-packages`` option.



.. _`Django - Database - SQL Server`: ../../django/database-sql-server.html
.. _SQLAlchemy: http://www.sqlalchemy.org/docs/05/reference/dialects/mssql.html#driver

