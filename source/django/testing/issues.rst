Issues
******

If your tests are not using an in-memory database, then use local settings to
specify SQLite as the database.  If using any other database, then an in memory
database will not be used:

  The name of database to use when running the test suite:
  ``settings.TEST_NAME``, default value is ``None``

  If the default value (``None``) is used with the SQLite database engine, the
  tests will use a memory resident database.  For all other database engines
  the test database will use the name ``'test_' + DATABASE_NAME``.
