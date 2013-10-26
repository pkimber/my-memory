Maven
*****

Sample
======

- sample-sql-liquibase-plugin_
  To set-up this sample, make sure you read the site notes for this sample
  first: sample-sql-plugin_

pom.xml
-------

.. code-block:: xml

  <dependencies>
    <dependency>
      <groupId>net.sourceforge.jtds</groupId>
      <artifactId>jtds</artifactId>
      <version>1.2</version>
      <scope>test</scope>
    </dependency>
  </dependencies>
  <build>
    <plugins>
      <plugin>
        <groupId>org.liquibase</groupId>
        <artifactId>liquibase-plugin</artifactId>
        <version>1.7.0.0</version>
        <executions>
          <execution>
            <phase>process-test-resources</phase>
            <configuration>
              <changeLogFile>src/main/resources/db-change-log.xml</changeLogFile>
              <driver>net.sourceforge.jtds.jdbc.Driver</driver>
              <username>sa</username>
              <password>mypass</password>
              <url>jdbc:jtds:sqlserver://localhost:1433;databaseName=integration_test</url>
            </configuration>
            <goals>
              <goal>update</goal>
            </goals>
          </execution>
        </executions>
      </plugin>
    </plugins>
  </build>

Note: To set the configuration for all goals (e.g. ``mvn liquibase:update``),
move the ``configuration`` element outside the ``executions`` element.  We are
using this in out multi-module projects.  Here is a copy of the dependency
management section from our root pom:

.. code-block:: xml

  <plugin>
      <groupId>org.liquibase</groupId>
      <artifactId>liquibase-plugin</artifactId>
      <version>1.9.5.0</version>
      <configuration>
          <propertyFile>src/main/database/liquibase.properties</propertyFile>
          <driver>net.sourceforge.jtds.jdbc.Driver</driver>
      </configuration>
  </plugin>

Goal
====

To just run the phase of the build which includes LiquiBase (with the above
``pom.xml`` file):

::

  mvn clean process-test-resources


.. _sample-sql-liquibase-plugin: http://toybox/hg/sample/file/tip/java/maven/sample-sql-liquibase-plugin
.. _sample-sql-plugin: http://toybox/hg/sample/file/tip/java/maven/sample-sql-plugin

