Maven
*****

Links
=====

- `Maven 2 FindBugs Plugin`_

Usage
=====

Add the following to the ``reporting``, ``plugins`` section of the ``pom.xml``
file:

::

  <reporting>
    <plugins>
      <plugin>
        <groupId>org.codehaus.mojo</groupId>
        <artifactId>findbugs-maven-plugin</artifactId>
        <!-- These are the defaults... so no need to add a configuration section -->
        <configuration>
          <threshold>Low</threshold>
          <effort>Default</effort>
        </configuration>
      </plugin>

The reports will be generated when you run ``mvn site``.


.. _`Maven 2 FindBugs Plugin`: http://mojo.codehaus.org/findbugs-maven-plugin/

