Issues
******

Clean Fails
===========

If the clean fails, try disabling the Windows Search,
(:doc:`../windows/tips-vista`).

Failed to resolve artifact.
===========================

I think the issue can be spotted here by looking at the *Path to dependency*.
The main artifact is a ``SNAPSHOT`` version.  It is using version 1.0 of a
module.  I think the problem is because the module includes a ``SNAPSHOT``
dependency among it's own dependencies.

::

  [INFO] Failed to resolve artifact.

  Missing:

  1) uk.co.mycompany.framework.common:framework:jar:1.1-SNAPSHOT

    Try downloading the file manually from the project website.

    Then, install it using the command:
        mvn install:install-file -DgroupId=uk.co.mycompany.framework.common -DartifactId=application_framework -Dversion=1.1-SNAPSHOT -Dpackaging=jar -Dfile=/path/to/file

    Alternatively, if you host your own repository you can deploy the file there:
        mvn deploy:deploy-file -DgroupId=uk.co.mycompany.framework.common -DartifactId=application_framework -Dversion=1.1-SNAPSHOT -Dpackaging=jar -Dfile=/path/to/file -Durl=[url] -DrepositoryId=[id]

    Path to dependency:
          1) uk.co.mycompany.framework.admin:admin:jar:1.1-SNAPSHOT
          2) uk.co.mycompany.framework.reporting:statistics_module:jar:1.0
          3) uk.co.mycompany.framework.common:application:jar:1.1-SNAPSHOT

  1 required artifact is missing.

  for artifact:
    uk.co.mycompany.framework.admin:admin:jar:1.1-SNAPSHOT

  from the specified remote repositories:
    nexus.releases (http://svn.mycompany.com/nexus/content/groups/public)

In this example the ``SNAPSHOT`` version of the ``application_framework`` was
declared in the parent ``pom.xml`` file.

To solve the problem, I think (possibly) that we should only use ``SNAPSHOT``
dependencies in the actual module which requires them.  Parent ``pom.xml``
files should only include released versions of artifacts.

``java.lang.OutOfMemoryError: Java heap space``
===============================================

`Increase maven runtime heap space`_

Windows
-------

::

  I actually increase the heap space by setting the MAVEN_OPTS variable in
  the mvn.bat script, it works fine. I've just added the following line at
  the top of the script (after the two first paragraphs of comments):

::

  @REM under the License.
  @REM ----------------------------------------------------------------------------

  set MAVEN_OPTS=-Xms1024M -Xmx1024M

  @REM ----------------------------------------------------------------------------
  @REM Maven2 Start Up Batch script

When using JDK 1.6, I also had to increase ``PermSize``:

::

  set MAVEN_OPTS=-Xms1024M -Xmx1024M -XX:MaxPermSize=256M

Linux (Ubuntu)
--------------

Added the following to ``.bashrc``:

::

  export MAVEN_OPTS="-Xms1024M -Xmx1024M -XX:MaxPermSize=256m"

Commons Digester (``commons-digester``)
=======================================

Two possible solutions:

- Upgrade to Maven version 2.0.9
  http://jira.codehaus.org/browse/MNG-2123
- If you have problems with commons digester, then upgrade to 2.0.8...
- Digester null version error when building:

::

  Sent: 30 April 2008 11:04
  To: Patrick Kimber...
  Subject: Digester null version error when building

  Hello,

  Last night I was having this problem when building. If you copy the 1.1.2
  directory down a level so instead of jstl/jstl/1.1.2 you have jstl/1.1.2 it
  works J

  Thanks,

Invalid POM
===========

The ``mvn install`` command was throwing hundreds of these errors:

::

  [WARNING] POM for 'uk.co.sample.framework.common:application_framework:pom:1.0:compile' is invalid.
  It will be ignored for artifact resolution.
  Reason: Failed to validate POM for project uk.co.sample.framework.common:application_framework at Artifact [uk.co.sample.framework.common:application_framework:pom:1.0:compile]

- The offending pom file was a parent pom further down the project.
- The offending pom file had been released and included a dependency on
  ehcache:

  ::

      <dependencies>
        <dependency>
          <groupId>ehcache</groupId>
          <artifactId>ehcache</artifactId>

- The actual parent pom was using dependency management:

  ::

      <dependencyManagement>
        <dependencies>
          <dependency>
            <groupId>uk.co.sample.framework.common</groupId>
            <artifactId>application_framework</artifactId>
            <version>1.0</version>
          </dependency>
          <dependency>
            <groupId>ehcache</groupId>
            <artifactId>ehcache</artifactId>
            <version>1.1</version>
          </dependency>

- The error was caused because we updated the ehcache dependency in the parent
  pom file.  The important thing to note is that the ``groupId`` for the
  dependency changed:

  ::

          <groupId>net.sf.ehcache</groupId>
          <artifactId>ehcache</artifactId>
          <version>1.6.0-beta1</version>

  Changing the ``groupId`` then makes the pom file for version 1.0 of
  ``application_framework`` invalid, because it no longer knows the version
  for the ehcache dependency.

- There are two solutions:

  - Leave both combinations of the artifact in the dependency management
    section of the parent pom
    (``ehcache.ehcache`` and ``net.sf.ehcache.ehcache``).
  - Update the parent pom, so that it uses a new version of the
    ``application_framework`` artifact e.g. ``1.1-SNAPSHOT``.

Unable to tag SCM
=================

See Subversion Issues, :doc:`../subversion/issues`.

unexpected at this time.
========================

Trying to run ``mvn.bat``:

::

  Files was unexpected at this time.

The environment variable ``JAVA_HOME``, was set to
``"C:\Program Files (x86)\Java\jdk1.6.0_11"`` (with the quotes)...

To solve the problem, remove the double quotes and set ``JAVA_HOME`` to
``C:\Program Files (x86)\Java\jdk1.6.0_11``... all sorted!!

unmappable character for encoding UTF8
======================================

::

  Compilation failure
  /util/PostcodeUtilTest.java:[95,60] unmappable character for encoding UTF8

Perhaps this blog entry might help: `Maven and the encoding of Java files`_

*solution is to add the encoding parameter to the maven-compiler-plugin*:

::

  <plugin>
      <groupId>org.apache.maven.plugins</groupId>
      <artifactId>maven-compiler-plugin</artifactId>
      <configuration>
          <source>1.5</source>
          <target>1.5</target>
          <encoding>ISO-8859-1</encoding>
      </configuration>
  </plugin>

Note: I guess we would need to add ``UTF8`` or something similar...


.. _`Increase maven runtime heap space`: http://www.nabble.com/Increase-maven-runtime-heap-space-to7155640s177.html#a7155640
.. _`Maven and the encoding of Java files`: http://robcos.com/maven-and-the-encoding-of-java-files/

