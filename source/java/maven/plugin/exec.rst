Exec
****

- http://mojo.codehaus.org/exec-maven-plugin/
- Also see :doc:`appassembler`.

Example
=======

Command Line
------------

To run ``MainClass`` *in the current VM with the enclosing project's
dependencies as classpath*:

::

  mvn exec:java -Dexec.mainClass="com.company.app.MainClass"

pom.xml
-------

::

      <build>
          <plugins>
              <plugin>
                  <groupId>org.codehaus.mojo</groupId>
                  <artifactId>exec-maven-plugin</artifactId>
                  <configuration>
                      <executable>java</executable>
                      <!-- This adds target/test-classes to the classpath.
                      <classpathScope>test</classpathScope>
                      -->
                      <arguments>
                          <argument>-classpath</argument>
                          <!-- automatically creates the classpath using all project dependencies,
                          also adding the project build directory -->
                          <classpath/>
                          <argument>com.sample.App</argument>
                          <argument>${project.artifactId}</argument>
                      </arguments>
                  </configuration>
              </plugin>
          </plugins>
      </build>

Then run the application:

::

  mvn exec:exec

.. *Keep Alive
..
..   <<exec.keepAlive>>, <Indicates if mojo should be kept running after the mainclass
..   terminates. Useful for serverlike apps with deamonthreads>:
..
.. ---
.. mvn exec:java -Dexec.mainClass="com.company.app.MainClass" -Dexec.keepAlive="true"
.. ---

Multi Module
============

To use the exec plugin in a multi module project, just change into the module
folder before running the command.

Source Code
===========

To checkout the source code for this project:

::

  svn checkout http://svn.codehaus.org/mojo/trunk/mojo/exec-maven-plugin exec-maven-plugin

Issues
======

Class Loading Issues
--------------------

Cannot find a solution for this issue when using the *Exec Plugin*, but I have
found a :doc:`surefire`.

::

  java.lang.LinkageError: loader constraints violated when linking javax/xml/namespace/QName class

NullPointerException
--------------------

Trying to run the application from the wrong folder:

::

  mvn exec:java -Dexec.mainClass="com.sample.Write"

and I get this error:

::

  [INFO] [exec:java]
  [ERROR] BUILD ERROR
  constituent[0]: file:/usr/share/maven/lib/maven-core-2.0.6-uber.jar
  java.lang.NullPointerException
          at org.apache.maven.usability.MojoExecutionExceptionDiagnoser.diagnose(MojoExecutionExceptionDiagnoser.java:64)

Two things will cause this error:

- ``Write.class`` did not even exist in the ``target/classes`` folder.
- Also had the same error trying to run a non-public class.

Offline
-------

It is often helpful to add the offline (``-o``) parameter when using the
``exec`` plugin.  Your application will start more quickly because Maven will
only check your local repository for updated artifacts.

Parameters
----------

Make sure you use the latest version of the plugin (``-U`` to update):

::

  mvn exec:java -Dexec.mainClass="com.sample.App" -Dexec.args="81"

For more information see `Jira MEXEC-11`_.

.. There is an open issue which prevents passing command line parameters through this
.. plugin:
..
.. http://jira.codehaus.org/browse/MEXEC-5


.. _`Jira MEXEC-11`: http://jira.codehaus.org/browse/MEXEC-11

