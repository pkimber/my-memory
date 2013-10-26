log
***

::

  hg log -v -r tip:-5
  hg log -r -2
  hg log -p -r tip

  hg log -v -p -r 4dfc32ade0ad

  hg log -M -b my_branch_name -d -7

Note
----

======== ======================================================================
``-b``   show changesets within the given named branch
``-d``   show revisions matching date spec (``hg help dates``)
``-M``   do not show merges
``-p``   will show you the diff for that revision number.
``-r``   revision number (or changeset id).  Negative values e.g. ``-5`` refer to 5 revisions into the past.
``-v``   verbose
======== ======================================================================

**For options to follow history**, see the :doc:`cat` command...
