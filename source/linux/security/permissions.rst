Files and Folders - Permissions
*******************************

.. highlight:: bash

Links
=====

- :doc:`sample/office`.
- :doc:`snippets/fix-permissions`
- `Understanding file permissions`_.
- `Shared Folders in Ubuntu with setgid and ACL`_

File
====

Make a file executable::

  chmod a+x myscript

Octal Syntax
------------

Each permission is given a value:

==============  ==================
**Permission**  **Value**
==============  ==================
``-``           0
``x``           1
``w``           2
``r``           4
==============  ==================

Values add up when you combine permissions. Consequently the total value can
go from 0 (no permission at all) to 7 (full permissions):

==============  ===================
**Permission**  **Value**
==============  ===================
``---``         0
``--x``         1
``-w-``         2
``-wx``         3
``r--``         4
``r-x``         5
``rw-``         6
``rwx``         7
==============  ===================

Finally a value is given for each of the three types of users (User, Group
and Other) and these three numbers ranging from 0 to 7 are put together to
form the octal number. This is the number you can use with ``chmod``.

For instance::

  chmod 750 myfile

750 means 7 (``rwx``) for the owner, 5 (``r-x``) for the group and 0
(``---``) for others.

Here are some common uses of the octal numbers::

  chmod 755 myfile

``rwxr-xr-x``, all rights to the owner, other people only read and
execute::

  chmod 644 myfile

``rw-r--r--``, owner car read and write, other people only read::

  chmod 777 myfile

can be considered bad practice in some cases, full permissions to everybody.

Folder
======

Access Control Lists
--------------------

See `Shared Folders in Ubuntu with setgid and ACL`_.

To change the permissions on lots of folders::

  find /path/to/base/dir -type d -exec chmod 755 {} +

Execute
-------

The execute permissions on a folder, control whether you can access the
files in the folder.

Group Identification
--------------------

If the SGID (Set Group Identification) attribute is set on a directory,
files created in that directory inherit its group ownership. If the SGID is
not set the file's group ownership corresponds to the user's default group.

In order to set the SGID on a directory or to remove it, use the following
commands::

  chmod g+s directory_name
  chmod g-s directory_name

  chmod 2755 directory_name

When set, the SGID attribute is represented by the letter ``s`` which replaces
the ``x`` in the group permissions::

  ls -l directory
  drwxrwsr-x  10 george administrators  4096 2006-03-10 12:50 directory

Note: A capital ``S`` indicates that the execute permission is NOT set.

Sticky Bit
----------

Setting the sticky bit on a directory::

  chmod +t

If you have a look at the /tmp permissions, in most GNU/Linux distributions,
you'll see the following::

  clem@pluto:/$ ls -l | grep tmp
  drwxrwxrwt   10 root root  4096 2006-03-10 12:40 tmp

The ``t`` in the end of the permissions is called the *sticky bit*. It
replaces the ``x`` and indicates that in this directory, files can only be
deleted by their owners, the owner of the directory or the root superuser.
This way, it is not enough for a user to have write permission on
``/tmp``, he also needs to be the owner of the file to be able to delete
it.

In order to set or to remove the sticky bit, use the following commands::

  chmod +t tmp
  chmod -t tmp

Group
=====

To **recursively** change the group of all files in ``my-folder`` to
``my-group``::

  chgrp -R my-group my-folder/

Owner
=====

To **recursively** change the owner of all files in ``my-folder`` to
``my-user``::

  chown -R my-user my-folder/


.. _`Shared Folders in Ubuntu with setgid and ACL`: http://brunogirin.blogspot.com/2010/03/shared-folders-in-ubuntu-with-setgid.html
.. _`Understanding file permissions`: http://www.linuxforums.org/security/file_permissions.html
