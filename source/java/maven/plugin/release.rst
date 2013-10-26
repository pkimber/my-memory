Release
*******

Links
=====

- http://maven.apache.org/plugins/maven-release-plugin/
- JIRA_
- `How to create a release using the maven2 release plugin`_.
  The text below is from the `Better Builds with Maven`_ book, section *7.8.
  Cutting a Release*.

Description
===========

The release plugin operates in two steps: prepare and perform. The prepare step
is run once for a release, and does all of the project and source control
manipulation that results in a tagged version.  The perform step could
potentially be run multiple times to rebuild a release from a clean checkout of
the tagged version, and to perform standard tasks, such as deployment to the
remote repository.

Preparation
===========

pom.xml
-------

*Subversion*

Your project must specify its location within the source code repository e.g:

::

  <scm>
    <connection>scm:svn:http://woody/svn/test/mvn-release-plugin/trunk/</connection>
    <developerConnection>scm:svn:http://woody/svn/test/mvn-release-plugin/trunk/</developerConnection>
  </scm>

*Repository*

The ``release:perform`` goal will deploy the artifacts to your local Maven
repository.  Set-up the location of your repository:

::

  <distributionManagement>
    <repository>
      <id>woody</id>
      <name>woody</name>
      <url>file:\\woody\Maven2Repository\repository\</url>
    </repository>
  </distributionManagement>

*File*

If you use a url with a ``file`` path in Windows format you will only be able
to run the ``release:perform`` goal from a Windows command prompt.

*FTP*

If you want to use a url with an ``ftp`` path then add the following to your
``pom.xml``

::

  <build>
    <extensions>
      <extension>
        <groupId>org.apache.maven.wagon</groupId>
        <artifactId>wagon-ftp</artifactId>
        <version>1.0-alpha-5</version>
      </extension>
    </extensions>

Note: The FTP stuff appears to fail with various exceptions.  Probably worth
trying again in a few weeks.

*Goals*

The ``release:perform`` goal will run ``deploy`` and ``site-deploy`` goals by
default.  To change this add the following to your ``pom.xml``:

::

  <build>
    <plugins>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-release-plugin</artifactId>
        <configuration>
          <goals>deploy</goals>
        </configuration>
      </plugin>
    </plugins>
  </build>

Subversion
----------

Make sure everything is committed to the source code repository.

An ``svn stat`` command should only display files and folders created by Maven
e.g. ``target``.  If you need to hide files from the release plugin you could
use the Subversion ``ignore`` property, :doc:`../subversion/properties`.

Dry Run
=======

This simulates a normal release preparation, without making any modifications
to your project.

::

  mvn release:clean release:prepare -DdryRun=true

You might like to look at the ``pom.xml.tag`` and ``pom.xml.next`` files which
as created. The version and SCM information is updated.

If there is an error:
http://maven.apache.org/plugins/maven-release-plugin/introduction.html.

Release
=======

Prepare
-------

The ``release:prepare`` goal will update the ``pom.xml`` file in the ``trunk``
and create a copy of your project as a Subversion ``tag``:

::

  mvn release:clean release:prepare

You may prefer to use the default version numbers and tag locations:

::

  mvn --batch-mode release:clean release:prepare

Perform
-------

The ``release:perform`` goal will checkout the code from the most recent
release, build it and deploy the jar files to the specified repository:

::

  mvn release:perform

To release from an older version, or if the ``release.properties`` file had
been removed, you would run the following *from an empty folder*:

::

  mvn release:perform -DconnectionUrl=scm:svn:http://woody/svn/test/tags/test-1.2/

Issues
======

Skip Unit Tests
---------------

The normal ``-Dmaven.test.skip=true`` option to skip unit tests has no effect
when performing a release.

To skip unit tests:

- create a profile, :doc:`profile`, which sets the ``maven.test.skip`` property
  to ``true``.

The scm url is invalid.
-----------------------

Maven Plugin - SCM, Issues, The scm url is invalid, :doc:`mvn-plugin-scm`.

Unable to tag SCM
-----------------

See Subversion Issues, :doc:`../subversion/issues`.

::

  <settings>
    <profiles>
      <profile>
        <id>skip-test</id>
        <properties>
          <maven.test.skip>true</maven.test.skip>
        </properties>
      </profile>
    </profiles>
  </settings>

- Activate the profile at the command line e.g.

  ::

    mvn release:clean release:prepare -DdryRun=true -P skip-test

svn/tmp directory may be missing or corrupt
-------------------------------------------

::

  svn: Your .svn/tmp directory may be missing or corrupt; run 'svn cleanup' and try again

SCM-409_

The path is probably too long.  Try releasing from a folder nearer the root of
your drive.



.. _JIRA: http://jira.codehaus.org/browse/MRELEASE
.. _`How to create a release using the maven2 release plugin`: http://jlorenzen.blogspot.com/2007/09/how-to-create-release-using-maven2.html
.. _`Better Builds with Maven`: http://www.mergere.com/m2book_download.jsp
.. _SCM-409: http://jira.codehaus.org/browse/SCM-409

