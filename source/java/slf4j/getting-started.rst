Getting Started
***************

Links
=====

http://www.slf4j.org/

Maven
=====

::

  <dependency>
    <groupId>org.slf4j</groupId>
    <artifactId>slf4j-api</artifactId>
    <version>1.4.2</version>
  </dependency>

Sample
======

::

  import org.slf4j.Logger;
  import org.slf4j.LoggerFactory;

  public class Wombat {

      private final Logger logger = LoggerFactory.getLogger(Wombat.class);

      Integer t;
      Integer oldT;

      public void setTemperature(Integer temperature) {
          oldT = t;
          t = temperature;

          logger.debug("Temperature set to {}. Old temperature was {}.", t, oldT);

          if(temperature.intValue() > 50) {
              logger.info("Temperature has risen above 50 degrees.");
          }
      }
  }

log4j
-----

To configure with log4j, follow these instructions, :doc:`slf4j-log4j`

Simple
------

To configure in a very simple way, follow these instructions,
:doc:`slf4j-simple`.

Issues
======

Failed to load class org.slf4j.impl.StaticLoggerBinder
------------------------------------------------------

::

  SLF4J: Failed to load class "org.slf4j.impl.StaticLoggerBinder".
  SLF4J: See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details.

This error is reported when the ``org.slf4j.impl.StaticLoggerBinder`` class
could not be loaded into memory.  This happens when no appropriate SLF4J
binding could be found on the class path.  Placing one (and only one) of
``slf4j-nop.jar``, ``slf4j-simple.jar``, ``slf4j-log4j12.jar``,
``slf4j-jdk14.jar`` or ``logback-classic.jar`` on the class path should solve
the problem.

