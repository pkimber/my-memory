Issues
******

jython 2.1
==========

Extra bytes at the end of class file
------------------------------------

::

  $ java jython-21
  Exception in thread "main" java.lang.ClassFormatError:
  Extra bytes at the end of class file jython-21

From `Building OpenLaszlo from Source`_:

If you get an error about extra bytes at the end of your class file, it is
because jython has it's own class loader and your Java is puking trying to
verify the non-standard class file.  Downgrade your java to 1.5 and you will
win.


.. _`Building OpenLaszlo from Source`: http://www.openlaszlo.org/svn/openlaszlo/branches/funnelcake/docs/src/contributors/source-build.dbk
