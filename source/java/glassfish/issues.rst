Issues
******

Console/Headless
================

The default GlassFish install has a Swing GUI.  To install without the Swing
GUI add the ``-console`` command line option.

Install
=======

When running the install I got the following error:

::

  ./java/bin/java  -Xmx256m -jar /home/patrickk/downloads/sun/glassfish-installer-v1_ur1-p01-b02.jar -console
  Exception in thread "main" java.io.IOException: Cannot run program "java": java.io.IOException: error=13, Permission denied
          at java.lang.ProcessBuilder.start(ProcessBuilder.java:459)
          at java.lang.Runtime.exec(Runtime.java:593)
          at java.lang.Runtime.exec(Runtime.java:466)
          at glassfish.main(glassfish.java:97)
  Caused by: java.io.IOException: java.io.IOException: error=13, Permission denied
          at java.lang.UNIXProcess.<init>(UNIXProcess.java:148)
          at java.lang.ProcessImpl.start(ProcessImpl.java:65)
          at java.lang.ProcessBuilder.start(ProcessBuilder.java:452)
          ... 3 more

To solve this issue, make sure Java is on your path.  For a simple way to do
this see the Continuum, Service install notes, :doc:`../continuum/install`.

Startup
=======

If GlassFish will not start up then use the ``verbose`` flag:

::

  ./bin/asadmin start-domain --verbose domain1

