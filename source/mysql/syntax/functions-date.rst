Date Functions
**************

.. highlight:: sql

Add (and Subtract)
==================

::

  DATE_ADD(collectionDate, INTERVAL 3 MONTH)
  SELECT DATE_ADD(CURRENT_TIMESTAMP, INTERVAL -1 WEEK)

Comparison
==========

::

  SELECT * FROM items
    WHERE timeStamp >= CAST('2011-02-21 16:40' AS DATETIME)

::

  WHERE
    my_date
    BETWEEN
      CAST('2011-01-01 00:00:00' AS DATETIME) AND
      CAST('2011-06-30 23:59:59' AS DATETIME)

Note: If you don't specify a time, then MySQL will use ``00:00:00`` (I think).

Current
=======

::

  SELECT CURRENT_TIMESTAMP

Format
======

::

  SELECT id, DATE_FORMAT(collectionDate, '%d/%m/%Y %k:%s')

Month
=====

::

  MONTH(record_date)

Year
====

::

  YEAR(record_date)

