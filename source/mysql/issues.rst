Issues
******

Access denied
=============

This error message when trying to run ``mysql`` from the command line:

::

  ERROR 1045 (28000): Access denied for user 'root'@'localhost' (using password: NO)

To solve the problem:

::

  mysql -u root -p

Operating System
================

Linux
-----

When copying files from Windows to Linux, then change the folder name
containing the data files to lower case e.g:

::

  /var/lib/mysql/MyDatabase/

to...

::

  /var/lib/mysql/mydatabase/

Windows - Initialise
--------------------

If everything gets in a mess (on Windows) and **you have no data to worry
about**, run *MySQL Server Instance Config Wizard* which can be found in the
Windows start menu.

This will reset everything including the ``my.ini`` file.

Workbench
=========

Missing Tables
--------------

If a user reports missing tables in *MySQL Workbench*, then make sure they have
refreshed their table list.

