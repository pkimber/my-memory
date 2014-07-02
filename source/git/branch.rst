Branch
******

.. highlight:: bash

List
====

::

  git branch -a

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

Tags
====

We can switch to tags in the same was as we switch branches (see above).
