Application Assembler
*********************

**Note**: This plugin will not include test classes or dependencies in the test
scope.

Links
=====

http://mojo.codehaus.org/appassembler/appassembler-maven-plugin/introduction.html

Setup
=====

Add the following to your ``pom.xml`` updating the ``mainClass`` as required:

::

  <build>
    <plugins>
      <plugin>
        <groupId>org.codehaus.mojo</groupId>
        <artifactId>appassembler-maven-plugin</artifactId>
        <configuration>
          <programs>
            <program>
              <mainClass>com.mycompany.app.App</mainClass>
              <name>app</name>
            </program>
          </programs>
        </configuration>
      </plugin>
    </plugins>
  </build>

Assemble
========

**Note**: `This has to be run with Java 1.5`_ (or above):

::

  mvn package appassembler:assemble

Execute
=======

To run the application in Windows:

::

  target\appassembler\bin\app.bat



.. _`This has to be run with Java 1.5`: http://jira.codehaus.org/browse/MOJO-534

