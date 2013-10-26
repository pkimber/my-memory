Dependencies
************

Links
=====

- :doc:`plugin/dependency`

Exclude and Provided
====================

The sample code below shows how to mark a dependency as ``provided``.  In this
case it will be included in the classpath when compiling, but will not be
included in the generated artifact (e.g. ``war`` file).

The sample code below also shows how to exclude transitive dependencies from a
project.  Note: It appears that the exclusion will remove the dependency from
the build even if it is included elsewhere.

::

    <dependencies>
      <dependency>
        <groupId>javax.servlet</groupId>
        <artifactId>servlet-api</artifactId>
        <version>2.4</version>
        <scope>provided</scope>
      </dependency>
      <dependency>
        <groupId>commons-dbcp</groupId>
        <artifactId>commons-dbcp</artifactId>
        <version>1.2.1</version>
      </dependency>
      <dependency>
        <groupId>com.mycompany</groupId>
        <artifactId>lucene-app</artifactId>
        <version>1.0</version>
        <exclusions>
          <exclusion>
            <groupId>fontbox</groupId>
            <artifactId>fontbox</artifactId>
          </exclusion>
          <exclusion>
            <groupId>nekohtml</groupId>
            <artifactId>nekohtml</artifactId>
          </exclusion>
        </exclusions>
      </dependency>
    </dependencies>

System Dependencies
===================

`System Dependencies`_

...usually used to tell Maven about dependencies which are provided by the JDK or
the VM:

::

  <project>
    ...
    <dependencies>
      <dependency>
        <groupId>javax.sql</groupId>
        <artifactId>jdbc-stdext</artifactId>
        <version>2.0</version>
        <scope>system</scope>
        <systemPath>${java.home}/lib/rt.jar</systemPath>
      </dependency>
    </dependencies>


.. _`System Dependencies`: http://maven.apache.org/guides/introduction/introduction-to-dependency-mechanism.html

