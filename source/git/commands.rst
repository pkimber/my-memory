Commands
********

.. highlight:: bash

Archive
=======

Create a ``zip`` archive of the ``master`` branch::

  git archive --format zip --output master.zip master

Pull Request
============

From `How can I check out a GitHub pull request with git?`_

To fetch a remote PR into your local repo::

  git fetch origin pull/$ID/head:$BRANCHNAME

Where ``$ID`` is the pull request id and ``$BRANCHNAME`` is the name of the
new branch **that you want to create**.

Once you have created the branch, then simply::

  git checkout $BRANCHNAME

e.g for https://github.com/sethwebster/ember-cli-new-version/pull/104/::

  git clone git@github.com:sethwebster/ember-cli-new-version.git
  cd ember-cli-new-version
  git fetch origin pull/104/head:read-version-in-service
  git checkout read-version-in-service

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

Remove file from the repository but keep it locally
===================================================

::

  git rm --cached somefile.ext

See `Remove file from the repository but keep it locally`_ ...

Reset or revert a specific file to a specific revision
======================================================

::

  git checkout abcde file/to/restore

.. note:: The file will be added to git, so to view the changes,
          ``git diff --cached``.

`Reset or revert a specific file to a specific revision using Git`_


.. _`How can I check out a GitHub pull request with git?`: https://stackoverflow.com/questions/27567846/how-can-i-check-out-a-github-pull-request-with-git
.. _`How to squash commits by git`: https://asciinema.org/a/11269
.. _`Remove file from the repository but keep it locally`: https://stackoverflow.com/questions/3469741/remove-file-from-the-repository-but-keep-it-locally
.. _`Reset or revert a specific file to a specific revision using Git`: http://stackoverflow.com/questions/215718/reset-or-revert-a-specific-file-to-a-specific-revision-using-git
