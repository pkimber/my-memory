python
******

Connect Strings
===============

`SQLAlchemy 0.5.3 Documentation, Connect Strings`_

::

  # relative path
  e = create_engine('sqlite:///path/to/database.db')

  # absolute path
  e = create_engine('sqlite:////path/to/database.db')

  # absolute path on Windows
  e = create_engine('sqlite:///C:\\path\\to\\database.db')

  # in-memory database
  e = create_engine('sqlite://')


.. _`SQLAlchemy 0.5.3 Documentation, Connect Strings`: http://www.sqlalchemy.org/docs/05/reference/dialects/sqlite.html
