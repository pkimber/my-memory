Import/Export
*************

copy
====

Import
------

To import a *tab separated* file::

  \copy codes FROM '/home/patrick/wip/codes.txt'

Note:

- The file **MUST BE** tab separated (not CSV).
- To run the ``COPY`` command, you need to be a ``superuser``.
- Difficult to find any useful documentation on this subject.

Export
------

::

  \copy codes TO '/home/patrick/wip/codes.txt'
