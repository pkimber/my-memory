Issues
******

If the container cannot see your service, then check the actual ``MANIFEST.MF``
file in your ``jar`` file.  In my case it was being overwritten by Maven.

To solve the problem, I added the following to the ``pom.xml`` file:

::

  <build>
      <plugins>
          <plugin>
              <artifactId>maven-compiler-plugin</artifactId>
              <configuration>
                  <source>1.5</source>
                  <target>1.5</target>
              </configuration>
          </plugin>
          <plugin>
              <groupId>org.apache.maven.plugins</groupId>
              <artifactId>maven-jar-plugin</artifactId>
              <configuration>
                  <archive>
                      <manifestFile>src/main/resources/META-INF/MANIFEST.MF</manifestFile>
                  </archive>
              </configuration>
          </plugin>
      </plugins>
  </build>

This can be added to the parent ``pom.xml`` file.

