Commands
********

.. highlight:: bash

Archive
=======

Create a ``zip`` archive of the ``master`` branch::

  git archive --format zip --output master.zip master

Reset or revert a specific file to a specific revision
======================================================

::

  git checkout abcde file/to/restore

.. note:: The file will be added to git, so to view the changes,
          ``git diff --cached``.

`Reset or revert a specific file to a specific revision using Git`_


.. _`Reset or revert a specific file to a specific revision using Git`: http://stackoverflow.com/questions/215718/reset-or-revert-a-specific-file-to-a-specific-revision-using-git
