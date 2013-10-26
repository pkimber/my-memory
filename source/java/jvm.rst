JVM
***

Heap Size
=========

From *The Java Developers Almanac*:
`Getting the Size of the Java Memory Heap`_

The heap is the area in memory in which objects are created:

::

  // Get current size of heap in bytes
  long heapSize = Runtime.getRuntime().totalMemory();

  // Get maximum size of heap in bytes. The heap cannot grow beyond this size.
  // Any attempt will result in an OutOfMemoryException.
  long heapMaxSize = Runtime.getRuntime().maxMemory();

  // Get amount of free memory within the heap in bytes. This size will increase
  // after garbage collection and decrease as new objects are created.
  long heapFreeSize = Runtime.getRuntime().freeMemory();

To investigate the results from these methods, I ran an application which uses
a significant amount of heap memory.  The maximum heap memory was set at 1GB
(``-Xmx1024m``).  The first line is soon after the application starts, the
second just before it exits:

::

  maxMemory [1,065,484,288] totalMemory   [2,031,616] freeMemory  [1,405,304]
  maxMemory [1,065,484,288] totalMemory [133,517,312] freeMemory [70,297,464]

Reading the `JavaDocs for these methods`_ we would say:

- ``freeMemory`` cannot exceed ``totalMemory``.
- Total free memory can be calculated as follows:

  ::

    total = maxMemory - totalMemory + freeMemory

Miscellaneous
=============

`Do you know your data size?`_ - Don't pay the price for hidden class fields.



.. _`Getting the Size of the Java Memory Heap`: http://www.exampledepot.com/egs/java.lang/GetHeapSize.html?l=new
.. _`JavaDocs for these methods`: http://java.sun.com/j2se/1.4.2/docs/api/java/lang/Runtime.html
.. _`Do you know your data size?`: http://www.javaworld.com/javaworld/javatips/jw-javatip130.html

