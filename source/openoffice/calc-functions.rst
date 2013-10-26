Calc - Functions
****************

**Note**: Calc uses semi-colons to separate parameters.  Some Ubuntu builds of
OpenOffice seem to accept commas!!

Date
====

::

  =IF(A2=""; "";  DAYS(TODAY(); A2))

- ``DAYS`` counts the number of days between two dates.
- ``TODAY`` is the system date.

If
==

See *Date* snippet above...

