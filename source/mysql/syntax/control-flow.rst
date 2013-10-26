Control Flow
************

.. highlight:: sql

IF
==

::

  SELECT IF(STRCMP('Ham', 'Ham'), 'No Match', 'Match');
  Match

Note: ``STRCMP`` returns ``0`` if the strings are the same (see
:doc:`functions-string`).
