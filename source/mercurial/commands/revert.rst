revert
******

Links
=====

`hg: Reverting committed changes`_

Rollback
========

`Bare-bones basic Mercurial for Subversion users`_

Have you ever issued a commit command, and then immediately realized you
shouldn't have?  Mercurial has a great solution for times like this:

::

  hg rollback

It undoes the last transaction in your repository.  Not only does it remove the
last commit from the history, but it restores the files in your working tree to
their state before that commit.  It's perfect for fixing a bad commit, because
you're put right back where you were before the commit, and can make whatever
fix you need before committing again.

_______________________________________________________________________________

**I really don't know how to use these commands yet... so I have created this
file for notes as I learn**...

Revert and Backout
==================

- A simple way to *revert a single file* to a previous revision, is just to
  ``cat`` the revision and over-write the existing file e.g:

  ::

    hg cat -r 356 btnSave.py > btnSave.py

  For more advanced ideas, see
  `Difference between Revert and Update in Mercurial`_.

- To back out (``revert``) the last revision:

  ::

    hg backout tip

- To revert a changeset which has already been committed, see the ``backout``
  command in `Finding and fixing mistakes`_
- To revert your whole repository to a previous revision:
  `revert back to old version and continue from there`_


.. _`Bare-bones basic Mercurial for Subversion users`: http://nedbatchelder.com/text/hgsvn.html
.. _`Difference between Revert and Update in Mercurial`: http://stackoverflow.com/questions/2506803/difference-between-revert-and-update-in-mercurial
.. _`Finding and fixing mistakes`: http://hgbook.red-bean.com/read/finding-and-fixing-mistakes.html
.. _`hg: Reverting committed changes`: http://www.markhneedham.com/blog/2010/04/15/hg-reverting-committed-changes/
.. _`revert back to old version and continue from there`: http://stackoverflow.com/questions/2540454/mercurial-revert-back-to-old-version-and-continue-from-there
