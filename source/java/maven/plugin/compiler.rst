Compiler
********

Java 1.5
========

To configure the Java compiler to allow JDK 5.0 sources:

::

  <build>
      <plugins>
          <plugin>
              <groupId>org.apache.maven.plugins</groupId>
              <artifactId>maven-compiler-plugin</artifactId>
              <configuration>
                  <source>1.6</source>
                  <target>1.6</target>
              </configuration>
          </plugin>
      </plugins>
  </build>

Configuration
=============

...not sure if these are valid, but they might be useful...

::

  <build>
    <plugins>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-compiler-plugin</artifactId>
        <configuration>
            <source>1.5</source>
            <target>1.5</target>
            <showWarnings>true</showWarnings>
            <showDeprecation>true</showDeprecation>
            <encoding>UTF-8</encoding>
        </configuration>
      </plugin>

Test
====

To compile the test code (without running the tests):

::

  mvn test-compile

