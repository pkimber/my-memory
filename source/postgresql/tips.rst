Tips
****

Script Rollback
===============

One super handy option one is ``-v``, where you can do the equivalent of
a ``\\set``.  For example:

::

  psql -1 -v ON_ERROR_STOP=1 -f script.psql

...makes sure that the script ends on the first error and rolls back instead
of filling your screen with junk.
