JAR
***

Links
=====

- http://maven.apache.org/plugins/maven-jar-plugin/
- `Creating an executable jar file`_

Executable
==========

::

      <build>
          <plugins>
              <plugin>
                  <groupId>org.apache.maven.plugins</groupId>
                  <artifactId>maven-jar-plugin</artifactId>
                  <configuration>
                      <archive>
                          <manifest>
                              <addClasspath>true</addClasspath>
                              <mainClass>com.sample.CountUniqueTerms</mainClass>
                          </manifest>
                      </archive>
                  </configuration>
              </plugin>
          </plugins>
      </build>

**Note**: To run this ``jar`` file, copy the dependencies to the current
folder and run as follows:

::

  java -jar solr-count-unique-terms-1.0-SNAPSHOT.jar

Manifest
========

- `Guide to Working with Manifests`_
- `JAR File Specification, JAR Manifest`_

::

  <project>
    <build>
      <plugins>
        <plugin>
          <groupId>org.apache.maven.plugins</groupId>
          <artifactId>maven-jar-plugin</artifactId>
          <configuration>
            <archive>
              <manifestEntries>
                <mode>development</mode>
                <!-- Think carefully before un-commenting this section:
                <url>${pom.url}</url>
                -->
                <version>${pom.version}</version>
              </manifestEntries>
            </archive>
          </configuration>
        </plugin>
      </plugins>
    </build>
  </project>

Test
====

`Guide to using attached tests`_

*Many times you may want to resuse the tests that you have created for a
project in another*...


.. _`Creating an executable jar file`: http://maven.apache.org/plugins/maven-jar-plugin/examples/executable-jar.html
.. _`Guide to Working with Manifests`: http://maven.apache.org/guides/mini/guide-manifest.html
.. _`JAR File Specification, JAR Manifest`: http://java.sun.com/j2se/1.5.0/docs/guide/jar/jar.html#JAR%20Manifest
.. _`Guide to using attached tests`: http://maven.apache.org/guides/mini/guide-attached-tests.html

