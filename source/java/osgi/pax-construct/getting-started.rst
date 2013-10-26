Getting Started
***************

Install
=======

- Download ``scripts-1.4.zip`` from
  http://wiki.ops4j.org/display/paxconstruct/Download.
- I extracted to:

  ::

    /home/patrick/bin/pax-construct-1.4

- Add the ``bin`` folder to your ``PATH``.  On Linux:

  ::

    PATH="$PATH:/home/patrick/bin/pax-construct-1.4/bin"

- Make sure your Maven installation has access to the *ops4j* repository:
  (http://repository.ops4j.org/maven2/ (probably using Nexus).

Getting Started
===============

Create (Top Level) Project
--------------------------

- Change into the folder where you want to create the project.

  ::

    patrick@buzz:~/development/sample/java/osgi$ pax-create-project

    pax-create-project -g groupId -a artifactId [-v version] [-o] [-- mvnOpts ...]

    groupId (examples) ? com.dudewheresmyjar
    artifactId (myProject) ? dwmj
    version (1.0-SNAPSHOT) ? 1.0.0-SNAPSHOT

- **Note**: This command created the folder, ``dwmj``, for my project.  I just
  renamed it to something more appropriate.

Project Configuration
---------------------

**Note**: The ``pax-provision`` command should build the project and start the
*Felix* OSGi container.  This didn't work on my workstation (most likely the
*URL [mvn:...] could not be resolved* issue here, :doc:`issues`.

...we want to use *Equinox* anyways... so make these changes:

- In the root ``pom.xml``, update the compiler plug-in:

  ::

    <plugins>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-compiler-plugin</artifactId>
        <configuration>
          <source>1.6</source>
          <target>1.6</target>
        </configuration>
      </plugin>

- In the root ``pom.xml``, update the ``maven-pax-plugin`` plug-in to
  ``equinox`` and enable ``ide-support`` (so the project can be opened in
  Eclipse):

  ::

      <plugin>
        <groupId>org.ops4j</groupId>
        <artifactId>maven-pax-plugin</artifactId>
        <version>1.4</version>
        <configuration>
          <provision>
            <param>--platform=equinox</param>
          </provision>
        </configuration>
        <executions>
          <execution>
            <id>ide-support</id>
            <goals>
              <goal>eclipse</goal>
            </goals>
          </execution>
        </executions>
      </plugin>
    </plugins>

Start
-----

- Start the OSGi container:

  ::

    pax-provision

- Close the container:

  ::

    osgi> close

Bundle
======

The next step is to create a bundle, :doc:`bundle-create`.

