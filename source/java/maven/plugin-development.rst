Development
***********

Links
=====

- `The plugin documentation standard`_.
- `This plugin checks that a project complies with the Plugin Documentation Standard`_.

Getting Started
===============

Create
------

This command line will create a ``MyMojo`` class in the ``com.sample`` package.
The class will be annotated with ``@goal touch`` - this is the goal.

::

  mvn archetype:create -DgroupId=com.sample -DartifactId=my-plugin -DarchetypeGroupId=org.apache.maven.archetypes -DarchetypeArtifactId=maven-archetype-mojo

Change into the project folder and ``mvn install``.

Run
---

To run the ``touch`` goal, change into another project and run it with
this command line:

::

  mvn com.sample:my-plugin::1.0-SNAPSHOT:touch

Logging
=======

::

  getLog().info("some logging text...");

Properties
==========

Simple
------

::

  import org.apache.maven.plugin.AbstractMojo;

  public final class MyMojo extends AbstractMojo {

      /**
       * @parameter expression="${project.build.directory}"
       */
      private String buildDirectory;

      /**
       * @parameter expression="${project.build.sourceDirectory}"
       */
      private String sourceDirectory;

      /**
       * @parameter expression="${project.name}"
       */
      private String projectName;

See the following mailing list entries for *how to find* the names of other
properties:
http://www.nabble.com/Where-can-I-find-list-of-properties--t1432052.html
http://www.nabble.com/-m2-project.artifacts-Classpath%2C-etc.-t248548.html#a694847

File handling
-------------

From a mailing list entry: *checkout plexus-utils FileUtil class*.

Maven Project
-------------

::

  import org.apache.maven.plugin.AbstractMojo;
  import org.apache.maven.project.MavenProject;

  public final class MyMojo extends AbstractMojo {

      /**
       * @parameter expression="${project}"
       * @required
       * @readonly
       */
      private MavenProject project;

Maven Settings
--------------

To retrieve a variable from ``~/.m2/settings.xml``:

*settings.xml*

::

  <settings>
    <activeProfiles>
      <activeProfile>my-profile</activeProfile>
    </activeProfiles>
    <profiles>
      <profile>
        <id>my-profile</id>
        <properties>
          <my.property>The value of my property</my.property>
        </properties>
      </profile>
    </profiles>
  </settings>

::

  import org.apache.maven.plugin.AbstractMojo;

  public final class MyMojo extends AbstractMojo {

      /**
       * @parameter expression="${my.property}"
       * @required
       */
      private String myProperty;

Testing
=======

For testing look up details on ``AbstractMojoTestCase``.


.. _`The plugin documentation standard`: http://maven.apache.org/guides/development/guide-plugin-documentation.html
.. _`This plugin checks that a project complies with the Plugin Documentation Standard`: http://maven.apache.org/plugins/maven-docck-plugin/

