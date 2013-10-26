Memory
******

.. highlight:: java

From the *Google I/O 2011* video, `Memory management for Android Apps`_ by
Patrick Dubroy.  Also see `Memory Analysis for Android Applications`_ and
`Avoiding memory leaks` by  Romain Guy.

Heap
====

::

  ActivityManager.getMemoryClass()

Integer value in MB which is the heap size for your application.

To get a larger heap size (only for memory intensive apps e.g. an image editor)
put ``android:largeHeap`` into your ``AndroidManifest.xml``.  To find how much
memory is available

::

  ActivityManager.getLargeMemoryClass()

Note: *DO NOT USE 'largeHeap' AS A MATTER OF ROUTINE*.  It will not be good for
your users when they try to run multiple applications, and garbage collection
will take longer.

Monitor
=======

Log messages...

``GC_CONCURRENT`` is triggered as heap starts to fill up.

``GC_FOR_MALLOC`` when concurrent collection didn't complete in time, so more
memory had to be allocated by stopping and running garbage collection.

``GC_EXPLICIT`` when manually calling garbage collection (don't do this).

e.g. ``freed 2049K``

  Amount of memory freed on this collection

e.g. ``65% free 3571K/9991K``

  65% free after collection completed.  3571K free after collection, 9991K
  total heap memory.

e.g. ``external 4703K/5261K``

  4703K externally allocated memory (bitmaps etc).  5261K is a soft limit where
  garbage collection will be started by the system.

e.g. ``paused 2ms+2ms``

  concurrent collections will show two pause times.  Non concurrent show a
  single pause time (and will be higher).

Objects
-------

Create a heap dump using DDMS by clicking on the ``Dump HPROF file`` icon in
the IDE.  There is also an API call if you need to create a dump at a specific
time:

::

  android.os.Debug.dumpHprofData()

Only need to convert to HPROF format if using the stand-alone version of DDMS:

::

  ~/bin/adt-bundle-linux-x86_64/sdk/tools/hprof-conv orig.hprof converted.hprof

The heap can then be analysed using standard heap analysis tools (MAT, jhat
etc)

Eclipse Memory Analyzer (MAT)
-----------------------------

Shallow heap

  How large is this object (size in bytes)

Retained heap

  What other objects could be freed at the same time?  Total size of objects
  which could be freed (check out the *dominator tree* concept)

Dominator Tree

  List of objects organised by amount of *Retained Heap*.

  Right click on an object, *Path to GC Roots*, *exclude weak references*

  The analyser does not treat weak references separately.  Generally do not
  need to be concerned with weak references.

Histogram View

  ``byte[]`` are now the backing data for pixel data.  Right click,
  *List objects*, *with incoming references*, Right click, *Path to GC Roots*,
  *exclude weak references*

  If *Objects* shows more than one instance of your activity, then this is
  worth investigating.


.. _`Avoiding memory leaks`: http://android-developers.blogspot.co.uk/2009/01/avoiding-memory-leaks.html
.. _`Memory Analysis for Android Applications`: http://android-developers.blogspot.co.uk/2011/03/memory-analysis-for-android.html
.. _`Memory management for Android Apps`: https://www.youtube.com/watch?v=_CruQY55HOk
