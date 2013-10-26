JavaDoc
*******

Links
=====

- `Maven 2 Javadoc Plugin`_

``pom.xml``
===========

To create JavaDoc reports when running ``mvn site``:

::

    <reporting>
      <plugins>
        <plugin>
          <groupId>org.apache.maven.plugins</groupId>
          <artifactId>maven-javadoc-plugin</artifactId>
        </plugin>
      </plugins>
    </reporting>

Linking to external Javadocs
============================

http://docs.codehaus.org/display/MAVENUSER/Javadoc+Plugin

::

    <reporting>
      <plugins>
        <plugin>
          <groupId>org.apache.maven.plugins</groupId>
          <artifactId>maven-javadoc-plugin</artifactId>
          <configuration>
            <aggregate>true</aggregate>
            <links>
              <link>http://java.sun.com/j2se/1.4.2/docs/api</link>
              <link>http://jakarta.apache.org/commons/chain/apidocs</link>
            </links>
          </configuration>

Multiple reports for one plugin
===============================

http://docs.codehaus.org/display/MAVENUSER/Reporting+Plugins


.. _`Maven 2 Javadoc Plugin`: http://maven.apache.org/plugins/maven-javadoc-plugin/

