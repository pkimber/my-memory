osql
****

Links
=====

- Also see :doc:`sqlcmd`.
- `osql Utility`_

Sample
======

Script
------

To run the ``list__mydb.sql`` script on ``localhost``:

::

  osql.exe -E -i"list__mydb.sql"

- ``-E`` uses a trusted connection instead of requesting a password (must be
  upper case).
- Use the ``-d`` parameter to specify a database name e.g. ``-d "mydb"``

SQL
---

*Not tested*!!!

To run SQL directly on the server ``MyServer``:

::

  osql.exe -E -Q"DROP DATABASE mydb"
  osql.exe -S MyServer -E -Q"RESTORE DATABASE MyDB FROM disk = '\\MyServer\Backups\mydb.bak'"



.. _`osql Utility`: http://msdn.microsoft.com/en-us/library/aa214012(SQL.80).aspx

