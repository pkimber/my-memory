EAR
***

Follow EJB notes first, :doc:`project-ejb`...

Maven
=====

Packaging
---------

::

  <packaging>ear</packaging>

Dependencies - EAR Module
-------------------------

::

  <dependencies>
    <dependency>
      <groupId>root.project</groupId>
      <artifactId>j2ee-simple-ejbs</artifactId>
      <type>ejb</type>
    </dependency>
    <dependency>
      <groupId>root.project.servlets</groupId>
      <artifactId>j2ee-simple-servlet</artifactId>
      <type>war</type>
    </dependency>

Dependency Management - Parent Module
-------------------------------------

::

  <dependencyManagement>
    <dependencies>
      <dependency>
        <groupId>root.project</groupId>
        <artifactId>j2ee-simple-ejbs</artifactId>
        <version>${project.version}</version>
        <type>ejb</type>
      </dependency>
      <dependency>
        <groupId>root.project.servlets</groupId>
        <artifactId>j2ee-simple-servlet</artifactId>
        <version>${project.version}</version>
        <type>war</type>
      </dependency>

EAR Plugin
----------

::

  <build>
    <plugins>
      <plugin>
        <artifactId>maven-ear-plugin</artifactId>
        <configuration>
          <archive>
            <manifest>
              <addClasspath>true</addClasspath>
            </manifest>
          </archive>
        </configuration>
      </plugin>
    </plugins>
  </build>



