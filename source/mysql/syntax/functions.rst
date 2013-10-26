Functions
*********

.. highlight:: sql

CAST
====

::

  UPDATE contact
    SET age = CAST(x_old_age AS UNSIGNED)
    WHERE x_old_age <> ''
      AND x_old_age IS NOT NULL

::

  SELECT
    CAST(1234 AS CHAR)

``CAST`` to ``VARCHAR`` doesn't seem to be supported..

Date
====

- :doc:`functions-date`

String
======

- :doc:`functions-string`
