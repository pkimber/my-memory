Copy - cp
*********

.. highlight:: bash

Attributes
==========

To preserve attributes::

  cp -a

Directory
=========

`Copy multiple files from a different directory`_::

  cp ./path/to/folder/{march,april,may} .

dot Files and Folder
====================

To copy dot files from a folder to somewhere else:

From `Recursively copying hidden files - Linux`_::

  find -H /path/to/toplevel/dir/ -maxdepth 1 -name '.*' -a \( -type d -o -type f -o -type l \) -exec cp -a '{}' /path/to/destination/dir/ \;

- ``-H`` will cause find not to follow symlinks (except if the actual
  toplevel directory name you gave it is a symlink; that it will follow).
- ``/path/to/toplevel/dir/`` is, obviously, supposed to be replaced by you
  with the path do the directory which hosts the settings files and
  directories you want to back up.
- ``-maxdepth 1`` will stop find from recursively descending into any
  directories whose name starts with a dot. We don't need it to recurse,
  ``cp`` will do that for us, we just need the names at this level.
- ``-name '.*'`` tells find that we want all names that start with a dot.
  This won't work correctly if the environment variable ``POSIXLY_CORRECT``
  is set, but it rarely (if ever) is. This is the first match condition we
  have specified so far.
- ``a \( ....... \)`` is an ``and`` followed by a more complex condition in
  parentheses (I've used ..... to replace it, it's explained below). We need
  to escape the parentheses since they'll otherwise be (mis)interpreted by
  the shell, hence the backslash in front of them.
- ``-type d -o -type f -o -type l`` are three conditions with an or between
  them. ``-type d`` matches directories, ``-type f`` matches regular files,
  and ``-type l`` matches symlinks. You can select what you want - for
  example, if you don't want to backup settings directories, omit
  ``-type d`` (and the ``-o`` right behind it, obviously).
- ``-exec ..... \;`` tells find to execute a command every time a match is
  encountered. The end of the command is marked by a semicolon, which we
  again need to escape with a backslash to avoid shell interpretation.
  Within that command line, you need to use ``{}`` where you want the name
  of the currently encountered match to end up. Since shells might also
  misinterpret the curly braces, you should place them in apostrophes, as in
  ``'{}'``. The command we want to execute in this case is
  ``cp -a '{}' /path/to/destination/dir/`` (``-a`` means archive, which
  recurses in subdirectories, copies symlinks as links, and preserves
  permissions and extended attributes, and ``/path/to/destination/dir/`` is
  obviously the name of the destination directory - replace it).

So, in plain English, this find command line says this:

Start at ``/path/to/toplevel/dir/``. Do not descend into any subdirectories.
Find all directories, files and symlinks whose name starts with a dot. For
each of those you have found found, copy it to ``/path/to/destination/dir/``
preserving nature, permissions, and extended attributes.

Folders
=======

http://www.tuxfiles.org/linuxhelp/dirman.html

For copying and moving directories you can use the ``cp`` and ``mv`` commands
just like you use them with files.  Yeah, I know.  If you've already tried to
copy a directory with ``cp``, you've probably noticed that ``cp`` just
complains at you.  Probably it says something like ``cp: omitting directory``.
You see, the ``cp`` command wants you to use the ``-r`` option if you want to
copy a directory with its contents.

The ``-r`` means *copy recursively*::

  cp -r dir1 dir2


.. _`Copy multiple files from a different directory`: http://stackoverflow.com/questions/9915822/how-to-copy-multiple-files-from-a-different-directory-using-cp
.. _`Recursively copying hidden files - Linux`: http://serverfault.com/questions/3154/recursively-copying-hidden-files-linux
