find
****

Links
=====

- `DMIESSLER.COM - find`_
- `Mommy, I found it! - 15 Practical Linux Find Command Examples`_

File
====

Name
----

Search for a file named "foobar.txt" starting in the current folder::

  find . -name foobar.txt

Search for a file named "foobar.txt" in "/usr"::

  find /usr -name foobar.txt

Extension
---------

Case insensitive search from "``/``" for all files with an ``mp3`` extension::

  find / -iname "*.MP3"

Note: Placing quotes around the search criteria avoids issues with wildcard
characters and is probably a good habit to get into.  Could use a back-slash
instead of the quotes... e.g::

  find . -iname \*pillow\*

Size
----

Find files that are over a gigabyte in size::

  find ~/Movies -size +1024M

Time
----

From Stack Overflow,
`Find the files that have been changed in last 24 hours`_::

  find /directory_path -mtime -1 -ls
  # or
  find ./ -newermt "-24 hours" -ls

.. tip:: The ``-`` before ``1`` is important - it means anything changed
         one day or less ago.

Type
----

Find only files::

  find . -type f

To count the number of files in a folder and sub-folders, see
:doc:`tips`.

Folder
======

Find only directories (``d``)::

  find . -type d
  find . -type d -name keydir

...to look for others (files, links, or sockets), just substitute ``f``, ``l``
or ``s`` for the ``d`` in the command above.

Time
====

Accessed
--------

Files accessed within the last 60 minutes::

  find -amin -60

files accessed more than 60 minutes ago::

  find -amin +60

Modified
--------

Files modified within the last 10 minutes::

  find -mmin -10

There are also day versions of these arguments:

- ``-atime``: when the file was last accessed.
- ``-ctime``: when the file's permissions were last changed.
- ``-mtime``: when the file's data was last modified.

Find all files in ``/etc`` owned by root that have been modified within the
last day::

  find /etc -user root -mtime -1

User
====

Find all files that belong to a certain user::

  find . -user daniel

Also works for groups (``-group``).

===

Combining Arguments
===================

You can also combine arguments using and, or, and not.  By default if you use
two different arguments you are ``and`` ing them.  If you want to use "or" you
give the ``-o`` option, and if you want to get everything except something,
you use the ``!`` option.

Find only regular files, owned by ``daniel``, that are also ``jpg`` images::

  find . -user daniel -type f -name "*.jpg"

Now do the same, but exclude anything named autumn::

  find . -user daniel -type f -name "*.jpg" ! -name "autumn*"

Exec
====

This command searches ``../a-folder/`` for files modified within the last 10
minutes and passes the full path of each file to the ``ls`` command::

  find ../a-folder/ -mmin -10 -exec ls -la {} \;

================  ===============================================================
``../a-folder/``  run the ``find`` command in this folder.
``-mmin -10``     Modified within the last 10 minutes.
``-exec``         Carry out the following command on each file.
``ls -la``        The command to run for each file.
``{}``            Substituted with the full path name of the selected file.
``\;``            Terminate the command (the ``;`` is escaped).
================  ===============================================================

Note::

  -exec command {} +

This variant of the ``-exec`` action runs the specified command on the
selected files, but the command line is built by appending each selected file
name at the end.

xargs
-----

- Also see `Combining find With xargs`_
- xargs_ - construct arg list and execute command


.. _`Combining find With xargs`: http://dmiessler.com/study/find/
.. _`DMIESSLER.COM - find`: http://dmiessler.com/study/find/
.. _`Find the files that have been changed in last 24 hours`: https://stackoverflow.com/questions/16085958/find-the-files-that-have-been-changed-in-last-24-hours
.. _`Mommy, I found it! - 15 Practical Linux Find Command Examples`: http://www.thegeekstuff.com/2009/03/15-practical-linux-find-command-examples/
.. _tips...: tips.html
.. _xargs: http://www.research.att.com/~gsf/man/man1/xargs.html
