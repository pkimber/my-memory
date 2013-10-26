SELECT
******

.. highlight:: sql

Data Type
=========

Date
----

- :doc:`functions-date`

GROUP BY
========

Date
----

To group by a date:

::

  SELECT DATE_FORMAT(timeStamp, '%d/%m/%Y') AS 'Date',
    COUNT(id) AS 'Packages',
    userName
    FROM d343
    GROUP BY
      DATE(timeStamp),
      userName
    ORDER BY timeStamp DESC

INTO
====

::

  SELECT id, status INTO @item_id, @item_status FROM food_items LIMIT 1;

Like
====

::

  SELECT * FROM auth_user WHERE first_name LIKE '%kimber%';

NULL
====

COALESCE
--------

Returns the first non-NULL value in the list, or NULL if there are no non-NULL
values:

::

  mysql> SELECT COALESCE(NULL, 1);
  -> 1

ISNULL
------

.. code-block:: sql

  SELECT
    *
  FROM
    store
  WHERE
    NOT ISNULL(location)

Top
===

::

  SELECT * FROM auth_user LIMIT 5;
