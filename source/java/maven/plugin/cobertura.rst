Cobertura
*********

Links
=====

- Cobertura_
- cobertura-maven-plugin_

Run
===

To produce the html reports:

::

  mvn cobertura:cobertura

Maven
=====

To add Cobertura reports to your site:

::

  <reporting>
    <plugins>
      <plugin>
        <groupId>org.codehaus.mojo</groupId>
        <artifactId>cobertura-maven-plugin</artifactId>
      </plugin>
    </plugins>
  </reporting>

Exclude
-------

To exclude files/packages:

::

  <plugin>
    <groupId>org.codehaus.mojo</groupId>
    <artifactId>cobertura-maven-plugin</artifactId>
    <configuration>
      <instrumentation>
        <excludes>
          <exclude>wrapper.exe</exclude>
        </excludes>
      </instrumentation>
    </configuration>
  </plugin>


.. _Cobertura: http://cobertura.sourceforge.net/
.. _cobertura-maven-plugin: http://mojo.codehaus.org/cobertura-maven-plugin/

