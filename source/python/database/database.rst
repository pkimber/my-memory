Database
********

Links
=====

- `PEP 249 - Python Database API Specification v2.0`_
- :doc:`../../jython/database`
- :doc:`mx`
- :doc:`postgresql`
- :doc:`sql-server`

Cursor Objects
==============

- ``.description``

  This read-only attribute is a sequence of 7-item sequences.  Each of these
  sequences contains information describing one result column:

  - ``name``
  - ``type_code``: ``STRING``, ``BINARY``, ``NUMBER``, ``DATETIME``
    or ``ROWID``.
  - ``display_size``
  - ``internal_size``
  - ``precision``
  - ``scale``
  - ``null_ok``

  The first two items (name and type_code) are mandatory, the other five are
  optional.

  Note: For an example of how to process this data, review the
  ``pk.db.query_result_processor.QueryResultProcessor`` class.

- ``.rowcount``

  This read-only attribute specifies the number of rows that the last
  ``executeXXX()`` produced or affected.

Parameters
==========

See :doc:`sql-server`, Usage, Parameters`_


.. _`PEP 249 - Python Database API Specification v2.0`: http://www.python.org/dev/peps/pep-0249/
