Command Line
************

Install - Windows
=================

Download ``CollabNetSubversion-client-1.6.6-4.win32.exe``,
*CollabNet Subversion Command-Line Client v1.6.6 (for Windows)* from:

http://subversion.tigris.org/getting.html.

Run the installer.  Accept the defaults.  Restart your command prompt and the
``svn`` command should run from the prompt (The installer automatically creates
the path to ``svn``).

Sample
======

::

  svn

  svn update

  svn log copyconfig.py

  svn checkout https://212.106.106.29/svn/python/trunk/ python

  svn add CopyLinuxConfig/

  svn commit

Commands
========

commit
------

To change the default editor on Windows, edit the Subversion ``config`` file:

::

  C:\Documents and Settings\<user name>\Application Data\Subversion\config

...and set the ``editor-cmd`` property:

::

  editor-cmd = vim

Note:

- To specify the user name, use the ``--username`` switch.
- To use the contents of a file for the commit message:

  ::

    svn commit -F msg foo.c

copy
----

To make a branch or tag:

::

  svn copy \
      http://myserver/svn/projects/gateway/trunk/ \
      http://myserver/svn/projects/gateway/tags/Before-Config/ \
      -m "Before... updating code to allow configuration using http"

...or to copy from the current working copy to a URL:

::

  svn cp . http://myserver/svn/projects/lucene-stuff/branches/PJK-2007-08-08-Temp -m "Test Copy (Please delete)."

create
------

See :doc:`repository`.

del
---

To delete an add...

I did an add which included a temporary file.  When it was time to commit the
file no longer existed so the commit failed!  To resolve:

::

  svn del csharphelp/.FormTestAnchorDock.cs.swp

diff
----

Show the last change committed to ``foo.c``:

::

  svn diff -r PREV:COMMITTED foo.c

::

  svn diff -r 2721:3291

To display the differences between two revisions of a file:

::

  svn diff AddSimpleToDo.dlg -r 2721:3291

To ignore white-space:

::

  svn diff -x -w roadshow.html

folder
------

To create a directory in the repository:

::

  svn mkdir https://myserver/svn/documents/my-memory

ignore
------

Setting the ``ignore`` property on individual files or folders is a bit
complicated.  The command line starts something like this:
``svn propset svn:ignore``

Probably better to use the global ignore pattern (``global-ignores``).  This
can be set by editing:

::

  C:\Documents and Settings\<user name>\Application Data\Subversion\config

or for Vista:

::

  C:\Users\<user name>\AppData\Roaming\Subversion\config

e.g. to ignore ``.classpath`` files and ``target`` folders:

::

  [miscellany]
  global-ignores = *.checkstyle *.classpath *.project *.settings Thumbs.db \target

**Note**: This setting will affect TortoiseSVN and the command line client.

This can also be set in Tortoise (*TortoiseSVN*, *Settings*, *General*, *Global
ignore pattern*) but in this case the settings are saved in the registry at:

::

  HKEY_CURRENT_USER\Software\Tigris.org\Subversion\Config\miscellany

For more information see:

- `Advanced Topics - Configuration and the Windows Registry`_
- `How to Make Subversion ignore files and folders`_
- `Subversion settings`_ Configuration : file locations.

import
------

To import a new tree...

I created the following folder structure:

::

  config/trunk
  config/branches
  config/tags

...and imported using the following command:

::

  svn import config https://198.1.1.2/svn/config

Note: You must add the config onto the end of the import command

log
---

To see the last 5 log entries:

::

  svn log -l 5
  svn log -l 5 -v --diff

merge (undo/update/checkout)
----------------------------

See :doc:`command-line-merge`

move
----

To rename a file:

::

  svn move oldfile.cpp newfile.cpp

properties
----------

*List*

::

  svn proplist "sample.sql"

*Delete*

::

  svn propdel "svn:mime-type" "sample.sql"

Relocate
--------

When you are using the same folder in the same repository but the name or
url has changed:

::

  svn switch --relocate https://192.1.1.9/svn/documents/my-memory https://weezy/svn/documents/my-memory

revert
------

To revert all changes in the current folder and sub-folders:

::

  svn revert -R .

rm
--

To remove a file from version control without removing from your filesystem:

::

  svn rm --keep-local my_important_file

stat
----

To show which files will be updated (when we run the ``update`` command):

::

  svn stat -u

http://svnbook.red-bean.com/en/1.1/re26.html

The first six columns in the output are each one character wide, and each
column gives you information about different aspects of each working copy item.

The **first** column indicates that an item was added, deleted, or otherwise
changed.

== ============================================================================
   No modifications.
A  Item is scheduled for Addition.
D  Item is scheduled for Deletion.
M  Item has been modified.
R  Item has been replaced in your working copy.
C  The contents (as opposed to the properties) of the item conflict with
   updates received from the repository.
X  Item is related to an externals definition.
I  Item is being ignored (e.g. with the svn:ignore property).
?  Item is not under version control.
!  Item is missing (e.g. you moved or deleted it without using svn).  This also
   indicates that a directory is incomplete (a checkout or update was interrupted).
~  Item is versioned as one kind of object (file, directory, link), but has been
   replaced by different kind of object.
== ============================================================================

The **second** column tells the status of a file's or directory's properties.

== ============================================================================
   No modifications.
M  Properties for this item have been modified.
C  Properties for this item are in conflict with property updates received
   from the repository.
== ============================================================================

The **third** column is populated only if the working copy directory is locked.

== ============================================================================
   Item is not locked.
L  Item is locked.
== ============================================================================

The **fourth** column is populated only if the item is scheduled for
addition-with-history.

== ============================================================================
   No history scheduled with commit.
+  History scheduled with commit.
== ============================================================================

The **fifth** column is populated only if the item is switched relative to its
parent (see the section called *Switching a Working Copy*).

== ============================================================================
   Item is a child of its parent directory.
S  Item is switched.
== ============================================================================

The **sixth** column is populated with lock information.

== ============================================================================
   When --show-updates is used, the file is not locked.
   If ``--show-updates is`` not used, this merely means that the file is not
   locked in this working copy.
K  File is locked in this working copy.
O  File is locked either by another user or in another working copy. This only
   appears when ``--show-updates`` is used.
T  File was locked in this working copy, but the lock has been *stolen* and is
   invalid. The file is currently locked in the repository. This only appears
   when ``--show-updates is used``.
B  File was locked in this working copy, but the lock has been *broken* and is
   invalid. The file is no longer locked This only appears when --show-updates
   is used.
== ============================================================================

The out-of-date information appears in the **seventh** column (only if you pass
the ``--show-updates`` switch).

== ============================================================================
   The item in your working copy is up-to-date.
*  A newer revision of the item exists on the server.
== ============================================================================

switch
------

If you're currently inside the directory ``vendors`` which was branched to
``vendors-with-fix`` and you'd like to switch your working copy to that branch:

::

  svn switch http://svn.red-bean.com/repos/branches/vendors-with-fix .

And to switch back, just provide the URL to the location in the repository
from which you originally checked out your working copy:

::

  svn switch http://svn.red-bean.com/repos/trunk/vendors

Note: Because ``svn switch`` is essentially a variant of ``svn update``, it
shares the same behaviors; any local modifications in your working copy are
preserved when new data arrives from the repository.

update
------

*Revision*

To update to a revision number:

::

  svn update -r 4202

Editor
======

To set the default editor in *bash* to *vim*:

::

  export SVN_EDITOR=vim


.. _`Advanced Topics - Configuration and the Windows Registry`: http://svnbook.red-bean.com/en/1.1/ch07.html
.. _`How to Make Subversion ignore files and folders`: http://sdesmedt.wordpress.com/2006/12/10/how-to-make-subversion-ignore-files-and-folders/
.. _`Subversion settings`: http://eiffelsoftware.origo.ethz.ch/index.php/Subversion_Settings
