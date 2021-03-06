Branch
******

.. highlight:: bash

List and Checkout
=================

List::

  git branch -a

To checkout a remote branch e.g::

  git branch -a
  * master
    remotes/origin/747-board

To checkout ``747-board``::

  git checkout -b 747-board origin/747-board

Cherry Pick
===========

`How to merge a specific commit in git`::

  git cherry-pick aeca961

.. warning:: Checkout the `consequence of cherry-picking`_

Create
======

::

  git checkout -b ticket-0488

This is shorthand for::

  git branch ticket-0488
  git checkout ticket-0488

Merge
=====

::

  git checkout master
  git merge ticket-0488

Switch
======

::

  git checkout master
  git checkout ticket-0488

A more advanced version (which I don't understand)::

  git checkout remotes/origin/0.7.X

Delete
======

To delete the ``hotfix`` branch::

  git branch -d hotfix

Log
===

To see the branch on the log::

  git log --decorate

Remote
======

From `How to check out a remote Git branch?`_::

  git fetch origin
  git branch -v -a
  git checkout -b test origin/test

With Git versions ≥ 1.6.6, you can just do (doesn't work for me)!::

  git fetch
  git checkout test

.. _`How to check out a remote Git branch?`: http://stackoverflow.com/questions/1783405/how-to-check-out-a-remote-git-branch

Rename
======

From `How do I rename a local Git branch?`_::

  git branch -m <oldname> <newname>

If you want to rename the current branch, you can simply do::

  git branch -m <newname>

You can use this command to rename ``master`` e.g::

  git branch -m master 1010-angular
  git checkout live-site
  git branch -m live-site master

Tags
====

We can switch to tags in the same was as we switch branches (see above).


.. _`consequence of cherry-picking`: http://stackoverflow.com/questions/880957/pull-all-commits-from-a-branch-push-specified-commits-to-another/881014#881014
.. _`How do I rename a local Git branch?`: http://stackoverflow.com/questions/6591213/how-do-i-rename-a-local-git-branch
.. _`How to merge a specific commit in git`: http://stackoverflow.com/questions/881092/how-to-merge-a-specific-commit-in-git
