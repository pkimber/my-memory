Field Types
***********

Date
====

`SOLR Wiki, Indexing Dates`_

Query
-----

`Date Range Query + Fields`_

::

  submissionCreatedDate:[2008-07-02T00:00:00Z TO 2009-07-08T12:59:59Z]

::

  StartDate: [NOW TO NOW+30DAY] AND EndDate: [NOW TO NOW+30DAY]
  +startDate:[* TO NOW+30DAY] +endDate:[NOW TO *]


.. _`SOLR Wiki, Indexing Dates`: http://wiki.apache.org/solr/IndexingDates
.. _`Date Range Query + Fields`: http://www.nabble.com/Date-Range-Query-%2B-Fields-to16108517.html#a16132427

