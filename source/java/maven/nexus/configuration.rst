Configuration
*************

Deploy
======

Add the following to your ``.m2/settings.xml`` file:

::

  <settings>
    <servers>
      <server>
        <id>nexus.releases</id>
        <username>deployment</username>
        <password>deployment123</password>
      </server>
      <server>
        <id>nexus.snapshots</id>
        <username>deployment</username>
        <password>deployment123</password>
      </server>
      <server>
        <id>nexus.thirdparty</id>
        <username>deployment</username>
        <password>deployment123</password>
      </server>

Add the following to your ``pom.xml`` file:

::

  <distributionManagement>
    <repository>
      <id>nexus.releases</id>
      <name>Internal Releases</name>
      <url>http://svn.mycompany.com/nexus/content/repositories/releases</url>
    </repository>
    <snapshotRepository>
      <id>nexus.snapshots</id>
      <name>Internal Snapshots</name>
      <url>http://svn.mycompany.com/nexus/content/repositories/snapshots</url>
    </snapshotRepository>
  </distributionManagement>

To deploy your artifact:

::

  mvn deploy

Workstation
===========

Add the following to your ``.m2/settings.xml`` file:

::

  <settings>
    <mirrors>
      <mirror>
        <id>Nexus</id>
        <name>My Nexus Mirror</name>
        <url>http://svn.mycompany.com/nexus/content/groups/public</url>
        <mirrorOf>*</mirrorOf>
      </mirror>
    </mirrors>
  </settings>

Note:

- Change the ``url`` as appropriate.
- Setting ``mirrorOf`` to ``*`` will (I think), make the Nexus repository the
  only location where Maven will look for artifacts.

