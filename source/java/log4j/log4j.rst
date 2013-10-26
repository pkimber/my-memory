log4j
*****

Sample Code
===========

Java
----

::

  import org.apache.log4j.Logger;

      /** Standard logger. */
      private static Logger logger = Logger.getLogger(MyClass.class);

      logger.debug("foo()");

      // To log an exception (e)
      logger.error("foo()", e);

Maven
-----

Maven 2 dependency:

::

  <dependency>
    <groupId>log4j</groupId>
    <artifactId>log4j</artifactId>
    <version>1.2.14</version>
  </dependency>

Sample
======

Using a daily rolling file appender:

::

  log4j.rootLogger=info, R

  log4j.appender.R=org.apache.log4j.DailyRollingFileAppender
  log4j.appender.R.File=logger.log
  log4j.appender.R.Append=true
  log4j.appender.R.DatePattern='.'yyyy-MM-dd
  log4j.appender.R.layout=org.apache.log4j.PatternLayout
  log4j.appender.R.layout.ConversionPattern=%d [%p] %t %c %n%m%n

  # Adjust the logging level for specific classes
  #log4j.logger.com.sample.Cluster=debug

Using a rolling file appender.  This might be good for a service as it uses a
limited amount of disk space:

::

  log4j.rootLogger=error, R

  log4j.appender.R=org.apache.log4j.RollingFileAppender
  log4j.appender.R.File=logger.log
  log4j.appender.R.MaxFileSize=3MB
  log4j.appender.R.MaxBackupIndex=3
  log4j.appender.R.Append=true
  log4j.appender.R.layout=org.apache.log4j.PatternLayout
  log4j.appender.R.layout.ConversionPattern=%d [%p] %t %c %n%m%n

Layout
======

http://logging.apache.org/log4j/docs/api/org/apache/log4j/PatternLayout.html
PatternLayout

+---+------------------------------------+-----------+------------------------------------------------------+
| c | Category name                      |           | For the category name ``a.b.c`` the pattern          |
|   |                                    |           | ``%c{2}`` will output ``b.c``.                       |
+---+------------------------------------+-----------+------------------------------------------------------+
| C | Fully qualified class name         | Slow      | For the class name ``org.apache.xyz.SomeClass``,     |
|   |                                    |           | the pattern ``%C{1}`` will output ``SomeClass``.     |
+---+------------------------------------+-----------+------------------------------------------------------+
| d | Date                               |           | ``%d``, ``%d{ISO8601}`` or ``%d{ABSOLUTE}``          |
|   |                                    |           | Or a date format (**but this is slow**):             |
|   |                                    |           | ``%d{dd MMM yyyy HH:mm:ss,SSS}``                     |
+---+------------------------------------+-----------+------------------------------------------------------+
| F | File name                          | Slow      |                                                      |
+---+------------------------------------+-----------+------------------------------------------------------+
| l | Location                           | Very Slow | usually consists of the fully qualified name of the  |
|   |                                    |           | calling method followed by the callers source the    |
|   |                                    |           | file name and line number between parentheses.       |
+---+------------------------------------+-----------+------------------------------------------------------+
| L | Line number                        | Very Slow |                                                      |
+---+------------------------------------+-----------+------------------------------------------------------+
| m | Message                            |           |                                                      |
+---+------------------------------------+-----------+------------------------------------------------------+
| M | Method name                        | Very Slow |                                                      |
+---+------------------------------------+-----------+------------------------------------------------------+
| n | Line separator (new line)          |           |                                                      |
+---+------------------------------------+-----------+------------------------------------------------------+
| p | Priority                           |           |                                                      |
+---+------------------------------------+-----------+------------------------------------------------------+
| r | Time elapsed since layout creation |           |                                                      |
+---+------------------------------------+-----------+------------------------------------------------------+
| t | Thread name                        |           |                                                      |
+---+------------------------------------+-----------+------------------------------------------------------+
| x | Nested diagnostic context          |           |                                                      |
+---+------------------------------------+-----------+------------------------------------------------------+
| X | Mapped diagnostic context          |           |                                                      |
+---+------------------------------------+-----------+------------------------------------------------------+
| % | Modifier                           |           |                                                      |
+---+------------------------------------+-----------+------------------------------------------------------+

+----------+---------+---------+---------+------------------------------------------------------------------+
| Format   | left    | minimum | maximum | comment                                                          |
| modifier | justify | width   | width   |                                                                  |
+----------+---------+---------+---------+------------------------------------------------------------------+
| %20c     | false   | 20      | none    | Left pad with spaces if the category name is less than           |
|          |         |         |         | 20 characters long.                                              |
+----------+---------+---------+---------+------------------------------------------------------------------+
| %-20c    | true    | 20      | none    | Right pad with spaces if the category name is less               |
|          |         |         |         | than 20 characters long.                                         |
+----------+---------+---------+---------+------------------------------------------------------------------+
| %.30c    | NA      | none    | 30      | Truncate from the beginning if the category name is              |
|          |         |         |         | longer than 30 characters.                                       |
+----------+---------+---------+---------+------------------------------------------------------------------+
| %20.30c  | false   | 20      | 30      | Left pad with spaces if the category name is shorter             |
|          |         |         |         | than 20 characters.  However, if category name is longer         |
|          |         |         |         | than 30 characters, then truncate from the beginning.            |
+----------+---------+---------+---------+------------------------------------------------------------------+
| %-20.30c | true    | 20      | 30      | Right pad with spaces if the category name is shorter            |
|          |         |         |         | than 20 characters.  However, if category name is longer         |
|          |         |         |         | than 30 characters, then truncate from the beginning.            |
+----------+---------+---------+---------+------------------------------------------------------------------+

A nice compact layout (although the performance is not great):

::

  log4j.appender.R.layout.ConversionPattern=[%d{HH:mm:ss}] [%p] %C{1} %m%n

Levels
======

Log4j by default can log messages with the following priority levels.

+-------------+---------------------------------------------------------------------------------------------+
| ``trace``   | finer-grained informational events than the DEBUG                                           |
+-------------+---------------------------------------------------------------------------------------------+
| ``debug``   | to write debugging messages which should not be printed when the application is             |
|             | in production.                                                                              |
+-------------+---------------------------------------------------------------------------------------------+
| ``info``    | for messages similar to the "verbose" mode of many applications.                            |
+-------------+---------------------------------------------------------------------------------------------+
| ``warn``    | for warning messages which are logged to some log but the                                   |
|             | application is able to carry on without a problem.                                          |
+-------------+---------------------------------------------------------------------------------------------+
| ``error``   | for application error messages which are also logged to some log but, still, the            |
|             | application can hobble along.  Such as when some administrator-supplied                     |
|             | configuration parameter is incorrect and you fall back to using some hard-coded             |
|             | default value.                                                                              |
+-------------+---------------------------------------------------------------------------------------------+
| ``fatal``   | for critical messages, after logging of which the application quits abnormally.             |
+-------------+---------------------------------------------------------------------------------------------+

To set the logging levels for a specific class.

- Set the default ``rootLogger`` level to ``error`` or ``fatal``.
- Adjust the logging level for specific classes.  See below for an example.

Levels
------

This properties file will copy errors to a separate file:

::

  log4j.rootLogger=debug, R, S

  log4j.appender.R=org.apache.log4j.DailyRollingFileAppender
  log4j.appender.R.File=logger.log
  log4j.appender.R.Append=true
  log4j.appender.R.DatePattern='.'yyyy-MM-dd
  log4j.appender.R.layout=org.apache.log4j.PatternLayout
  log4j.appender.R.layout.ConversionPattern=%d [%p] %t %c %m%n

  log4j.appender.S=org.apache.log4j.DailyRollingFileAppender
  log4j.appender.S.File=logger-error.log
  log4j.appender.S.Append=true
  log4j.appender.S.DatePattern='.'yyyy-MM-dd
  log4j.appender.S.layout=org.apache.log4j.PatternLayout
  log4j.appender.S.layout.ConversionPattern=%d [%p] %t %c %m%n
  log4j.appender.S.threshold=error

sample-log4j_, a sample project in Subversion.

Watch
=====

To watch for changes in the log4j configuration file:

::

  public static void main(final String[] args) {
      /*
       * The constant, DEFAULT_CONFIGURATION_FILE, is deprecated but there is no
       * alternative in this version of log4j.
       * Later version of log4j have the org.apache.log4j.helpers.Constants class
       * which has the DEFAULT_CONFIGURATION_FILE constant.
       *
       * TODO Update to a newer version of log4j when it becomes available in the
       * Maven 2 repository.
       */
      PropertyConfigurator.configureAndWatch(org.apache.log4j.LogManager.DEFAULT_CONFIGURATION_FILE);
      logger.debug("main()");
      MyApp.initialise();
  }

Configuration
=============

To stop log4j appending each time:

::

  log4j.appender.R.Append=false

Console
=======

From http://logging.apache.org/log4j/docs/manual.html:

::

  # Set root logger level to DEBUG and its only appender to A1.
  log4j.rootLogger=DEBUG, A1

  # A1 is set to be a ConsoleAppender.
  log4j.appender.A1=org.apache.log4j.ConsoleAppender

  # A1 uses PatternLayout.
  log4j.appender.A1.layout=org.apache.log4j.PatternLayout
  log4j.appender.A1.layout.ConversionPattern=%-4r [%t] %-5p %c %x - %m%n

Eclipse
=======

To configure the location of the ``log4j.properties`` file see:
:doc:`../eclipse/log4j`.

Note: This is only required if the ``log4j.properties`` is not on the
classpath.

Maven
=====

To configure the location of the ``log4j.properties`` file see:

::

  \\g1\PatrickK\documents\howto\maven\log4j.txt

Note: This is only required if the ``log4j.properties`` is not on the classpath.

Old Version (1.1.3)
===================

Information on version 1.1.3 of log4j used by ColdFusion:

- :doc:`log4j-v1.1.3`
- ColdFusion logging, :doc:`../coldfusion/logging`.

Tomcat
======

log4j on Tomcat, :doc:`../tomcat/log4j`.

Classpath
=========

Had loads of problems with getting the software to find:

::

  log4j.properties

In the documentation the file is supposed to be found in the classpath.

I printed the output of ``com.mycompany.util.SysProps`` and found the
classpath included only the ``build`` folder and not the ``src`` folder when
running under Eclipse.

My ``log4j.properties file`` was previously only in the ``src`` folder and it
was working.  It turns out that my original Eclipse build was copying
``log4j.properties`` into the build folder as part of the make process.

To solve the problem I just refreshed the Eclipse Package Explorer window.
``log4j.properties`` was added into the list and when I ran the project the
file was copied to the build folder.


.. _sample-log4j: http://g1/svn/home/patrick/learn/sample-log4j

