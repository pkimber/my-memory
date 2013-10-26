String Functions
****************

.. highlight:: sql

CONCAT
======

Returns the string that results from concatenating the arguments.  May have
one or more arguments:

::

  SELECT
    CONCAT(
      COALESCE(store_positions.xPosition, ''),
      '-',
      COALESCE(store_positions.yPosition, ''),
      '-',
      COALESCE(store_positions.zPosition, '')
    ) AS Position
  FROM
    store_positions

*Note*: To include numbers in the string, cast the value e.g:

::

  SELECT CONCAT(CAST(int_col AS CHAR), char_col);

LENGTH (CHAR_LENGTH)
====================

**Note**: You will almost certainly want to use ``CHAR_LENGTH`` (not
``LENGTH``)

::

  SELECT
    CHAR_LENGTH(CAST(id_number AS CHAR))

LIKE
====

::

  SELECT * FROM village WHERE name LIKE 'ex%'

Note: ``%`` matches multiple characters, ``_`` matches a single character,
``\`` to escape.

STRCMP
======

::

  SELECT STRCMP('Pat', 'Pat');
  0

  SELECT STRCMP('Pat', 'ZZZ');
  -1
  SELECT STRCMP('Pat', 'AAA');
  1

**Note**: The ``STRCMP`` function returns 0 (false) when the strings are the
same.
