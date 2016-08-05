Commands
********

.. highlight:: bash

Archive
=======

Create a ``zip`` archive of the ``master`` branch::

  git archive --format zip --output master.zip master

Rebase (Not Merge)
==================

To rebase (rather than merge)::

  git checkout your-branch-name
  git rebase
  # fix the conflicts
  git rebase --continue
  # continue until all the conflicts are fixed

If you want to abort the rebase::

  git rebase --abort

Rebase (Squash)
===============

To merge two or more commits into one::

  # find the id of your commit
  git log --oneline
  # pick your base commit (from the top - and one beyond)
  git rebase -i 83dfbe2

See `How to squash commits by git`

Reset or revert a specific file to a specific revision
======================================================

::

  git checkout abcde file/to/restore

.. note:: The file will be added to git, so to view the changes,
          ``git diff --cached``.

`Reset or revert a specific file to a specific revision using Git`_


.. _`How to squash commits by git`: https://asciinema.org/a/11269
.. _`Reset or revert a specific file to a specific revision using Git`: http://stackoverflow.com/questions/215718/reset-or-revert-a-specific-file-to-a-specific-revision-using-git
