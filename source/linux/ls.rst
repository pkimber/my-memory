ls
**

Count
=====

To count the number of files in a folder and sub-folders, see :doc:`tips`

Nice
====

::

  ls -ltr

Recursive
=========

To list all files in a folder:

::

  ls -R


Note:

- To list directory entries instead of contents, use ``-d``
- :doc:`find` will find all files that match a pattern...

Issues
======

If ``ls`` hangs, *it is possible that you have an NFS mount to a server you no
longer have a connection or access to*...
