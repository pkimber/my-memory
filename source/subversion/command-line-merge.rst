Command Line - Merge
********************

Merge, also undo, update, checkout...

Basic
=====

Merge a branch back into the trunk (assuming that you have a working copy of
the trunk, and that the branch was created in revision 250):

::

  svn merge -r 250:HEAD http://svn.red-bean.com/repos/branches/my-branch

Resolve
=======

If you get ``local unversioned, incoming add upon update`` and you want to
accept the other users version:

::

  D     C logs
        >   local unversioned, incoming add upon update

  $ svn resolve --accept working logs
  $ svn revert logs
  $ svn st

I think ``resolved`` may be deprecated, but these are my old notes:

Mark ``THEFILE`` as *resolved* i.e. all conflicts are resolved:

::

  svn resolved THEFILE
  svn resolve --accept working THEFILE

Note: The ``working`` parameter indicates that you have manually resolved the
conflict.  Other parameters are valid.

local unversioned, incoming add upon update
-------------------------------------------

From `local unversioned, incoming add upon update`_

If you get the following message:

::

  $ svn status
  D     C logs
        >   local unversioned, incoming add upon update

Then this sequence of steps seems to solve it:

::

  $ svn resolve --accept working logs
  Resolved conflicted state of 'logs'
  $ svn revert logs
  Reverted 'logs'

Revert
======

Note: I used this command to revert a change I committed at revision 26373:

::

  svn merge -r 26373:25861 processor.py


.. _`local unversioned, incoming add upon update`: http://tomhennigan.blogspot.co.uk/2012/01/resolve-tree-conflict-svn-local.html
