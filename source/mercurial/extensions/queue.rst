Queues
******

Links
=====

- `Managing change with Mercurial Queues`_

Install
=======

Edit ``~/.hgrc``:

::

  [extensions]
  hgext.mq =

Note: I had to install the extension as follows:

::

  [extensions]
  hgext.mq =

To verify the extension is working:

::

  hg help qinit

Initialise
==========

To initialise the repository:

::

  hg init mq-sandbox
  cd mq-sandbox
  hg qinit

Patch
=====

Patches are created in a queue...

- Create

  ::

    hg qnew first.patch

- Refresh

  Update (commit) the current patch:

  ::

    hg qrefresh

- Patch - Add to the queue...

  You can add another patch to the queue:

  ::

    hg qnew second.patch

- Information

  To see the patches which are currently applied to your source:

  ::

    $ hg qapplied
    first.patch
    second.patch

  To see all the patches in the queue:

  ::

    $ hg qseries
    first.patch
    second.patch
    third.patch

- Push/Pop

  To push/pop the patches in the queue:

  ::

    hg qpop
    hg qpush

  Remember to use ``hg qapplied`` to see which patches are applied.

  To push or pop all patches in the queue, use the ``-a`` option:

  ::

    hg qpop -a
    hg qpush -a

- Converting the patch to a changeset.

  For more information, the following links might help:

  - `Tips & tricks - Converting the patch to a changeset`_
  - `The life of a patch`_

- Guards

  Patches can be applied conditionally using *guards*.  For more information
  see `Conditionally applying patches with guards`_.


.. _`Managing change with Mercurial Queues`: http://hgbook.red-bean.com/hgbookch12.html
.. _`Tips & tricks - Converting the patch to a changeset`: http://blogs.sun.com/sunwg11nprg/entry/using_mercurial_queues_extension
.. _`The life of a patch`: https://developer.mozilla.org/en/Mercurial_Queues
.. _`Conditionally applying patches with guards`: http://hgbook.red-bean.com/hgbookch13.html#x17-30500013.2

