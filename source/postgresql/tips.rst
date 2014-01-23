Tips
****

.. highlight:: sql

Escape
======

To escape a keyword, enclose it in double quotes e.g::

  INSERT INTO table (id, name, "year")...

Script Rollback
===============

One super handy option one is ``-v``, where you can do the equivalent of
a ``\\set``.  For example::

  psql -1 -v ON_ERROR_STOP=1 -f script.psql

...makes sure that the script ends on the first error and rolls back instead
of filling your screen with junk.

Sequence
========

To initialise a sequence (in this example, the table name is ``contact``)::

  SELECT SETVAL('contact_id_seq', (SELECT MAX(id) FROM contact) + 1);
