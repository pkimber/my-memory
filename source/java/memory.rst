Memory
******

Heap Size
=========

==================  ==========
initial heap size   ``-Xms``
maximum heap size   ``-Xmx``
stack size          ``-Xss``
==================  ==========

::

  java -Xms64m -Xmx512m

Be careful not to exceed the available physical memory.  In theory the process
should continue using virtual memory, but in practice the paging to disk will
cause massive performance problems.  On a SuSE Linux box with 256mb RAM and
maximum heap size of 512mb I had ``kernel: Out of Memory: Killed process``
errors in ``/var/log/messages``.

JVM
===

See Java - JVM, :doc:`jvm`
