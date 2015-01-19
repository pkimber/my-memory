Branch
******

.. highlight:: bash

List
====

::

  hg branches

Create
======

::

  hg branch new_name_for_my_branch
  hg update new_name_for_my_branch

Switch
======

::

  hg update branch_name
  hg update default

``default`` is the default branch!

Closed
======

To list closed branches:

::

  hg branches -c
