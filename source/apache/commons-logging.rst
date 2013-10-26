Commons - Logging
*****************

Links
=====

- http://commons.apache.org/logging/

Maven
=====

**Note**: (30/11/2007 17:33) Try using version 1.1.1 (ref
`commons-logging 1.1.1 released...`_).

The ``commons-logging-api`` dependency does not include built in support for
other logging frameworks.  Logging will go to system error...

::

  <dependency>
    <groupId>commons-logging</groupId>
    <artifactId>commons-logging-api</artifactId>
    <version>1.1</version>
  </dependency>

To add support for other logging frameworks (including log4j) add the following:

::

  <dependency>
    <groupId>commons-logging</groupId>
    <artifactId>commons-logging-adapters</artifactId>
    <version>1.1</version>
  </dependency>

Commons logging should automatically use log4j if:

- you include the ``commons-logging-adapters`` artifact (above) into your
  project.
- you include the log4j dependency in your project
- create the ``log4j.properties`` file.

  See sample projects (below)...

Sample Code
===========

::

  package com.sample;

  import org.apache.commons.logging.Log;
  import org.apache.commons.logging.LogFactory;

  public class Wombat {

      private final Log logger = LogFactory.getLog(Wombat.class);

      Integer t;

      Integer oldT;

      public void setTemperature(Integer temperature) {
          oldT = t;
          t = temperature;

          logger.debug("Temperature set to " + t + ". Old temperature was "
                  + oldT + ".");

          if (temperature.intValue() > 50) {
              logger.info("Temperature has risen above 50 degrees.");
          }
      }
  }

Sample Projects
===============

- log4j

  ::

    ~/repo/sample/java/sample-commons-logging/

- Simple

  ::

    ~/repo/sample/java/sample-commons-logging-simple/

  No reliance on third party logging frameworks.  All logging will go to system.error.

- log4j - Version 1.1.3

  Use version 1.0.2 of commons logging:

  ::

    ~/repo/sample/java/sample-commons-logging-log4j-v1.1.3/

  This appears to work because the commons logging API has not changed.

  ::

    <dependency>
      <groupId>commons-logging</groupId>
      <artifactId>commons-logging</artifactId>
      <version>1.0.2</version>
    </dependency>
    <dependency>
      <groupId>log4j</groupId>
      <artifactId>log4j</artifactId>
      <version>1.1.3</version>
    </dependency>


.. _`commons-logging 1.1.1 released...`: http://www.jroller.com/aalmiray/entry/commons_logging_1_1_1
