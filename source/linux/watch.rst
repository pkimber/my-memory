watch
*****

Links
=====

- `watch(1) - Linux man page`_

Usage
=====

``watch`` runs command repeatedly, displaying the first screenfull of output.

By default, the program is run every 2 seconds; use ``-n`` or ``--interval``
to specify a different interval.

The ``-d`` or ``--differences`` flag will highlight the differences between
successive updates.

To watch the contents of a directory change:

::

  watch -d ls -l


.. _`watch(1) - Linux man page`: http://www.die.net/doc/linux/man/man1/watch.1.html

