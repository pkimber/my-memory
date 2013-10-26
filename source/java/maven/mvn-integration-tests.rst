Integration Tests
*****************

Discussion with Paul and Simon... integration tests should be put into a
separate module in a multi-module project.

- `Integration Testing Woes`_.
- `Maven and Integration Testing`_... *The Better Builds With Maven book
  discusses the recommended practice of putting integration tests in a separate
  module.  If at all possible, follow this advice*.

  **If this is not possible** (and I don't know how you would automatically
  run integration tests in a separate module), then choose one of these
  options:

- `Maven Integration Testing`_:

  `sample-maven-integration-test`_

  **Note**:

  - I think this is the best option for integration tests because it binds to
    the ``integration-test`` phase (see the sample site documentation for
    usage notes).
  - The problem with this approach is that running a ``mvn install`` will
    run the integration tests because the ``integration-test`` phase occurs
    before the ``install`` phase.

- `Integration Testing in your Maven Application`_:

  Add this to your ``pom.xml`` file:

  ::

      <!-- Use these profiles to disable/enable integration tests. -->
      <profiles>
        <profile>
          <id>no-integration-testing</id>
          <activation>
            <activeByDefault>true</activeByDefault>
          </activation>
          <build>
            <plugins>
              <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-surefire-plugin</artifactId>
                <configuration>
                  <excludes>
                    <exclude>**/*IntegrationTest.java</exclude>
                    <exclude>**/IntegrationTest*.java</exclude>
                    <!-- Normal excludes (for unit testing). -->
                  </excludes>
                </configuration>
              </plugin>
            </plugins>
          </build>
        </profile>
        <profile>
          <id>integration-testing</id>
          <build>
            <plugins>
              <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-surefire-plugin</artifactId>
                <configuration>
                  <includes>
                    <include>**/*IntegrationTest.java</include>
                    <include>**/IntegrationTest*.java</include>
                  </includes>
                  <excludes>
                    <!-- Normal excludes (for unit and integration testing). -->
                  </excludes>
                </configuration>
              </plugin>
            </plugins>
          </build>
        </profile>
      </profiles>

  To run the integration tests:

  ::

    mvn -P integration-testing package


.. _`Integration Testing Woes`: http://achesny.wordpress.com/2009/10/22/integration-testing-woes/
.. _`Maven and Integration Testing`: http://docs.codehaus.org/display/MAVENUSER/Maven+and+Integration+Testing
.. _`Maven Integration Testing`: http://wiki.rodcoffin.com/index.php?title=Maven_Integration_Testing
.. _`sample-maven-integration-test`: http://toybox/hg/sample/file/tip/java/sample-maven-integration-test
.. _`Integration Testing in your Maven Application`: http://mavenize.blogspot.com/2007/06/integration-testing-in-your-maven.html

