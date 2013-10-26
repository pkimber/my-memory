Version 1.1.3
*************

Links
=====

`Quick Start to Using Log4j`_

Downloaded ``jakarta-log4j-1.1.3.zip`` (source code and documentation) for
version 1.1.3 from the *Log4j Archives* on
http://logging.apache.org/log4j/docs/earlier.html.

::

  C:\src\jakarta-log4j-1.1.3\

ColdFusion
==========

This version of log4j is used by ColdFusion.  Notes can be found at
ColdFusion logging, :doc:`../coldfusion/logging`.

Diagnostics
===========

At the top of the ``log4j.properties`` file add:

::

  log4j.debug=true

Example
=======

Source code:
------------

::

  import org.apache.log4j.Category;

  public final class MyClass {

      /** Logger. */
      private static Category logger = Category.getInstance(MyClass.class);

      /** Constructor. */
      private MyClass() {
          logger.debug("constructor()");
      }

log4j.properties
----------------

::

  log4j.rootCategory=debug, R

  log4j.appender.R=org.apache.log4j.RollingFileAppender
  log4j.appender.R.File=logger.log

  log4j.appender.R.MaxFileSize=1000KB
  log4j.appender.R.MaxBackupIndex=3

  log4j.appender.R.layout=org.apache.log4j.PatternLayout
  log4j.appender.R.layout.ConversionPattern=%d{ISO8601} [%x] %p %t %c - %m%n

Alternatively, this sample ``log4j.properties`` file will log messages for the
specified class to the console.  The console message format can also be used by
Eclipse to jump directly to the source code.

::

  ../../misc/howto/log4j/v1.1.3/log4j.properties

Layout
======

A nice compact layout (although the performance is not great):

::

  log4j.appender.R.layout.ConversionPattern=[%d{HH:mm:ss}] [%p] %C{1} %m%n

Logging Level
=============

To change the logging level for a class we normally set the ``rootCategory`` to
``error`` before adjusting the level of the class we want to check:

::

  log4j.rootCategory=error, R
  log4j.category.com.mycompany.sales.SalesService=debug

Levels
------

To copy errors to a separate file see the sample code in Subversion:
sample-log4j-v1-1-3_

Maven
=====

::

  <dependency>
    <groupId>log4j</groupId>
    <artifactId>log4j</artifactId>
    <version>1.1.3</version>
  </dependency>

Nested Diagnostic Contexts
==========================

Section *Using Nested Diagnostics Contexts* in:
http://www.vipan.com/htdocs/log4jhelp.html

Useful example source code:

::

  C:\src\jakarta-log4j-1.1.3\src\java\org\apache\log4j\examples\NumberCruncherServer.java

To display the diagnostic information in your logging output add ``%x`` to the
``log4j.properties`` file:

::

  log4j.appender.R.layout.ConversionPattern=%d{ISO8601} [%x] %p %t %c - %m%n


.. _`Quick Start to Using Log4j`: http://www.vipan.com/htdocs/log4jhelp.html
.. _sample-log4j-v1-1-3: http://g1/svn/home/patrick/learn/sample-log4j-v1-1-3

