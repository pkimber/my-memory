Assembly
********

Links
=====

- http://maven.apache.org/plugins/maven-assembly-plugin/
- The best documentation I can find for the assembly descriptor is in Subversion:
  https://svn.apache.org/repos/asf/maven/plugins/tags/maven-assembly-plugin-2.1/src/main/mdo/descriptor.mdo

Sample Project
--------------

sample-maven-assembly_

Command
=======

::

  mvn assembly:assembly

POM
===

Add the following to your ``pom.xml``:

::

  <build>
    <plugins>
      <plugin>
        <artifactId>maven-assembly-plugin</artifactId>
        <version>2.1</version>
        <configuration>
          <descriptors>
            <descriptor>src/main/assembly/classes-for-app.xml</descriptor>
          </descriptors>
        </configuration>
      </plugin>
    </plugins>
  </build>

**Note**:

- The assembly descriptor is located in ``src/main/assembly/`` which is the
  standard location for assembly descriptors.
- I am specifying version 2.1 as ``2.2-beta-1`` adds the artifact folder to the
  root of the zip file.

  For more information see `JIRA Issue - MASSEMBLY-179`_

  18/07/2007 08:54 Looks like this issue might be fixed in the latest snapshot
  of the plugin.

Goal
----

If you want this to run every time you run a ``install`` goal.  Add the
``executions`` section to your ``pom.xml`` file:

::

  <build>
    <plugins>
      <plugin>
        <artifactId>maven-assembly-plugin</artifactId>
        <configuration>
          <descriptors>
            <descriptor>src/main/assembly/classes-for-app.xml</descriptor>
          </descriptors>
        </configuration>
        <executions>
          <execution>
            <id>assembly</id>
            <phase>install</phase>
            <goals>
              <goal>assembly</goal>
            </goals>
          </execution>
        </executions>
      </plugin>

23/07/2007 09:08 One of our projects is using the ``attached`` goal.  This
might deploy the assembly to the remote repository.  See `assembly:attached`_.

Output Directory
----------------

To control the output directory add the following to the ``configuration``
section in ``pom.xml``:

::

  ...
  <artifactId>maven-assembly-plugin</artifactId>
  <configuration>
    <descriptors>
      <descriptor>dep.xml</descriptor>
    </descriptors>
    <outputDirectory>target/output</outputDirectory>
  </configuration>

Assembly Descriptor
===================

The file:

::

  src/main/assembly/classes-for-app.xml

defines your assembly.  An example file:

::

  <assembly>
    <id>classes-for-app</id>
    <formats>
      <format>jar</format>
    </formats>
    <includeBaseDirectory>false</includeBaseDirectory>
    <fileSets>
      <fileSet>
        <directory>target/classes</directory>
        <outputDirectory>/</outputDirectory>
      </fileSet>
    </fileSets>
    <dependencySets>
      <dependencySet>
        <outputDirectory>/</outputDirectory>
        <unpack>true</unpack>
        <scope>runtime</scope>
        <excludes>
          <exclude>log4j:log4j</exclude>
        </excludes>
      </dependencySet>
    </dependencySets>
  </assembly>

`JIRA, MASSEMBLY-179`_ Assembled jar includes artifact names in path:

*dependency sets with unpack == true no longer use <outputFileNameMapping/> at
all*.

Dependencies
------------

*Include*

If you prefer, you can specify the files to include rather than files to
exclude.  Replace the ``excludes`` section with the following:

::

  <dependencySets>
    <dependencySet>
      <outputDirectory>/</outputDirectory>
      <unpack>true</unpack>
      <scope>runtime</scope>
      <includes>
        <include>log4j:log4j</include>
        <include>commons-pool:commons-pool</include>
      </includes>
      ...

*Exclude*

To exclude a jar file and it's dependencies, add the provided scope to the
dependency in ``pom.xml``:

::

  <dependency>
    <groupId>com.thecompany</groupId>
    <artifactId>lucene-app</artifactId>
    <version>0.1</version>
    <scope>provided</scope>
  </dependency>

Executable JAR File
-------------------

An executable jar file can be build by adding this configuration to the
``pom.xml`` file:

::

  <build>
    <plugins>
      <plugin>
        <artifactId>maven-assembly-plugin</artifactId>
        <version>2.1</version>
        <configuration>
          <archive>
            <manifest>
              <mainClass>com.sample.App</mainClass>
            </manifest>
          </archive>
          <descriptorRefs>
            <descriptorRef>jar-with-dependencies</descriptorRef>
          </descriptorRefs>
        </configuration>
        <executions>
          <execution>
            <id>assembly</id>
            <phase>install</phase>
            <goals>
              <goal>assembly</goal>
            </goals>
          </execution>
        </executions>
      </plugin>
    </plugins>
  </build>

The ``mainClass`` should be modified as required.

*Issues*

In a multi module build, the assembly will fail to build from the root folder
with this message:

::

  No assembly descriptors found.

To solve this problem, I added the ``execution`` section as above, so the
assembly automatically builds during the ``install`` phase.  Other people have
the same issue, `Assembly one of the modules`_, but I didn't exactly follow
their solution.

Fileset
-------

To exclude the ``objectstest`` folder from the assembly:

::

  <fileSets>
    <fileSet>
      <directory>target/classes</directory>
      <excludes>
        <exclude>**/objectstest/</exclude>
      </excludes>

Formats
-------

To produce a ``zip`` file:

::

  <format>zip</format>

Multi Module
============

Multiple Assemblies
-------------------

Make sure to specify the version of the plugin in the parent pom:

::

  <build>
    <plugins>
      <plugin>
        <artifactId>maven-assembly-plugin</artifactId>
        <version>2.1</version>
      </plugin>

...we don't want to risk mixing the versions of the plugin.

Project Modules Only
--------------------

To only assemble jar files from this project add the ``projectModulesOnly`` tag
(*I don't know if this works*):

::

  <build>
    <plugins>
      <plugin>
        <artifactId>maven-assembly-plugin</artifactId>
        <configuration>
          <descriptors>
            <descriptor>src/main/assembly/classes-for-app.xml</descriptor>
          </descriptors>
          <projectModulesOnly>true</projectModulesOnly>


.. _sample-maven-assembly: http://toybox/hg/sample/file/tip/java/maven/sample-assembly
.. _`JIRA Issue - MASSEMBLY-179`: http://jira.codehaus.org/browse/MASSEMBLY-179
.. _`assembly:attached`: http://maven.apache.org/plugins/maven-assembly-plugin/attached-mojo.html
.. _`JIRA, MASSEMBLY-179`: http://jira.codehaus.org/browse/MASSEMBLY-179
.. _`Assembly one of the modules`: http://www.nabble.com/Assembly-one-of-the-modules-tf1543053s177.html#a4191401

