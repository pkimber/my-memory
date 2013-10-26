Jetty
*****

Links
=====

`Maven Jetty Plugin`_

Usage
=====

Add the following to ``pom.xml``:

::

  <build>
      <plugins>
          <plugin>
              <groupId>org.mortbay.jetty</groupId>
              <artifactId>maven-jetty-plugin</artifactId>
              <version>6.1.21</version>
          </plugin>
      </plugins>
  </build>

Note: For Jetty 7 (which doesn't seem to work for me) use the the ``groupId``,
``jetty-maven-plugin``.

To run the web application:

::

  mvn jetty:run

Auto Refresh
============

To get the Jetty plugin to check for changes to the web application and auto
re-deploy:

::

  <build>
    <plugins>
      <plugin>
        <groupId>org.mortbay.jetty</groupId>
        <artifactId>maven-jetty-plugin</artifactId>
        <configuration>
          <scanIntervalSeconds>10</scanIntervalSeconds>
          <requestLog implementation="org.mortbay.jetty.NCSARequestLog">
            <filename>target/yyyy_mm_dd.request.log</filename>
            <retainDays>90</retainDays>
            <append>true</append>
            <extended>false</extended>
            <logTimeZone>GMT</logTimeZone>
          </requestLog>
        </configuration>
      </plugin>
    </plugins>
  </build>

Issues
======

``maven-jetty-plugin`` does not exist.
--------------------------------------

::

  [ERROR] BUILD ERROR
  [INFO] The plugin 'org.mortbay.jetty:maven-jetty-plugin' does not exist or no valid version could be found

I deleted the ``org/mortbay/jetty/maven-jetty-plugin`` folder from my local
Maven repository.  It was downloaded again and worked perfectly.




.. _`Maven Jetty Plugin`: http://docs.codehaus.org/display/JETTY/Maven+Jetty+Plugin

