diff
****

To see the ``diff`` for a specific revision, use the ``log`` or ``export``
commands (i.e. ``hg log -v -p -r 4dfc32ade0ad`` or ``hg export 4dfc32ade0ad``).

To see the ``diff`` between two revisions:

::

  hg diff -r firstrevisionnumber:otherrevnumber filename
  hg diff -r 1593:tip address.rst
