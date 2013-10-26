Import
******

Links
=====

- `Using BULK INSERT to Load a Text File`_
- `BULK INSERT`_

Sample
======

::

  BULK INSERT table_name FROM 'C:\wip\codes.out'

::

  BULK INSERT codes
      FROM 'E:\codes\codes_1.txt'
      WITH (
          FIELDTERMINATOR = ',',
          ROWTERMINATOR = '\n',
          BATCHSIZE = 1000000
      )

Note: Also see SQL Server Express, DTS, :doc:`express`.


.. _`Using BULK INSERT to Load a Text File`: http://www.sqlteam.com/article/using-bulk-insert-to-load-a-text-file
.. _`BULK INSERT`: http://msdn.microsoft.com/en-us/library/ms188365.aspx

