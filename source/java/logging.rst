Logging
*******

Links
=====

- `Java Logging APIs`_
- java.util.logging_
- `An Introduction to the Java Logging API`_
- `Java: Redirecting System.out and System.err to a rolling log file`_
- `Why is my Java Logging not working`_.

Levels
======

=======  =============================================================
SEVERE   The highest value; intended for extremely important messages
WARNING  Intended for warning messages.
INFO     Informational runtime messages.
CONFIG   Informational messages about configuration settings/setup
FINE     Used for greater detail, when debugging/diagnosing problems
FINER    Even greater detail.
FINEST   The lowest value; greatest detail.
=======  =============================================================

Properties File
===============

Here is a sample ``logging.properties`` file:

::

  ../../misc/howto/java/logging.properties

**Note:** This file is not loaded by default.  You must specify the file as a
JVM property e.g.

::

  -Djava.util.logging.config.file=/path/to/file/logging.properties

Sample
======

::

  import java.util.logging.Logger;

      /** Standard logger. */
      private static Logger logger = Logger.getLogger(MyClass.class.getName());


      public void myMethod() {
          logger.fine("myMethod()");
      }



.. _`Java Logging APIs`: http://java.sun.com/j2se/1.4.2/docs/guide/util/logging/index.html
.. _java.util.logging: http://java.sun.com/j2se/1.4.2/docs/api/java/util/logging/package-summary.html
.. _`An Introduction to the Java Logging API`: http://www.onjava.com/pub/a/onjava/2002/06/19/log.html
.. _`Java: Redirecting System.out and System.err to a rolling log file`: http://blogs.sun.com/nickstephen/entry/java_redirecting_system_out_and
.. _`Why is my Java Logging not working`: http://www.forward.com.au/javaProgramming/javaGuiTips/javaLoggingDebugging.html

