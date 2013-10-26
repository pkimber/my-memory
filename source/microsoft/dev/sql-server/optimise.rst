Optimise/Tuning
***************

Links
=====

See Optimise/Tuning in :doc:`links`.

Execution Plan
==============

Make sure you have selected *Query*, *Include Actual Execution Plan* (or press
the button on the tool bar).

When you run the query an extra tab will be displayed showing the *Execution
Plan*.

Understanding the Execution Plan
--------------------------------

Index Seek Vs. Index Scan (Table Scan) (PDF):

::

  ../../../misc/howto/microsoft/sql-server/sql-server-index-seek-vs-index-scan-table-scan.pdf

Copy of blog entry by `Pinal Dave`_

Statistics
==========

`General Tips on Optimizing SQL Server Indexes`_

Union
=====

...change ``UNION`` in the view to ``UNION ALL``.  SQL does *extra* processing
when you do ``UNION`` to ensure the rows returned are unique.  As we know they
are unique we can use ``UNION ALL``.



.. _`Pinal Dave`: http://blog.sqlauthority.com/2007/03/30/sql-server-index-seek-vs-index-scan-table-scan/
.. _`General Tips on Optimizing SQL Server Indexes`: http://www.sql-server-performance.com/tips/optimizing_indexes_general_p1.aspx

