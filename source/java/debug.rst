Debug
*****

See:
http://www.me.umn.edu/%7Eshivane/blogs/cafefeed/2004/06/of-thread-dumps-and-stack-traces.html

Copied to:

::

  X:\PatrickK\articles\howto\Java\debug\of-thread-dumps-and-stack-traces.html

You can get a thread dump by pressing the following at the command prompt:
Ctrl+\ for unices or Ctrl+Break for windows machines.

One neat API in Java that allows you to locate where a class is being picked up is:

::

  Class.getProtectionDomain().getCodeSource().getLocation()

`Java doesNotUnderstand-like behaviour in Eclipse`_

*Window*, *Preferences*, *Java*, *Code Style*, *Code Templates*, *Code*,
*Method Body*:

::

  // ${todo} Auto-generated method stub
  throw new UnsupportedOperationException("Not implemented");

Then add a breakpoint to your *Debugger Breakpoint* view:
"*New Java Exception for UnsupportedOperationException that hasn't been caught*".


.. _`Java doesNotUnderstand-like behaviour in Eclipse`: http://eternusuk.blogspot.com/2009/03/java-doesnotunderstand-like-behaviour.html

