Branch
******

.. highlight:: bash

.. note:: It looks like Mercurial users would prefer to use ``bookmarks``
          rather than branches... but I don't think BitBucket supports pull
          requests from a bookmark: `Mercurial bookmarks should show up`_.

List
====

::

  hg branches

Create
======

::

  hg branch new_name_for_my_branch
  hg update new_name_for_my_branch

Push
====

To push the branch to BitBucket::

  hg push --new-branch

Switch
======

::

  hg update branch_name
  hg update default

``default`` is the default branch!

Closed
======

To close a branch::

  hg commit --close-branch

To list closed branches::

  hg branches -c


.. _`Mercurial bookmarks should show up`: https://bitbucket.org/site/master/issue/3182/mercurial-bookmarks-should-show-up-in-the
