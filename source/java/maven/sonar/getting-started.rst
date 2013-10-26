Getting Started
***************

Links
=====

- `The 2 minutes tutorial`_
- `Full installation in 5 steps`_
- `Declare the Sonar Maven Repository inside Nexus`_...
- `Collect data`_.

Download
========

Download ``sonar-1.11.zip`` from http://sonar.codehaus.org/downloads/.

Install
=======

Extract the archive to a convenient folder.  I extracted to:

::

  c:\tools\sonar-1.11\

Database
========

MySQL
-----

To set-up using MySQL:

::

  cd C:\mysql-5.1.35-win32\bin\
  mysql -u root
  mysql> CREATE DATABASE sonar CHARACTER SET utf8 COLLATE utf8_general_ci;
  mysql> grant all privileges on sonar.* to 'sonar'@'localhost' identified by 'tootinG';
  mysql> flush privileges;

Configuration
-------------

Edit the Sonar configuration file, ``conf/sonar.properties``:

- Comment out the ``org.apache.derby`` lines.
- Uncomment the *MySql* lines.
- Set the ``sonar.jdbc.username`` and ``sonar.jdbc.password``.

Testing
=======

- To start the server from the command line:

  ::

    cd \tools\sonar-1.11\
    bin\windows-x86-32\StartSonar.bat

  Note: If you cannot access the database server, see Issues, MySQL,
  :doc:`issues`.

- Browse to http://servername:9000/

Maven
=====

Settings
--------

We need to update the Maven settings file so the build can *find* the Sonar
server.  If using Hudson, then update the Maven ``settings.xml`` file used by
Hudson:

::

  <settings>
      <profiles>
          <profile>
              <id>sonar</id>
              <activation>
                  <activeByDefault>true</activeByDefault>
              </activation>
              <properties>
                  <sonar.jdbc.url>
                      jdbc:mysql://sys.mycompany:3306/sonar?useUnicode=true&amp;characterEncoding=utf8
                  </sonar.jdbc.url>
                  <sonar.jdbc.driver>com.mysql.jdbc.Driver</sonar.jdbc.driver>
                  <sonar.jdbc.username>sonar</sonar.jdbc.username>
                  <sonar.jdbc.password>tootinG</sonar.jdbc.password>

                  <!-- SONAR SERVER ON A REMOTE HOST
                  <sonar.host.url>http://myserver:1234</sonar.host.url>
                  -->
              </properties>
          </profile>
       </profiles>
  </settings>

Note: The ``&amp;`` is not a mistake!

Nexus
-----

- If your Maven installation is set-up to use Nexus, create a new proxy
  repository in Nexus:

============================  =================================================
**Format**                    Maven2
**Repository Policy**         Release
**Remote Storage Location**   http://dev3.server:9000/deploy/maven
**Download Remote Indexes**   False
**Checksum Policy**           Ignore
============================  =================================================

- Add this newly created repository to your public group of repositories.

Hudson
======

The Sonar plugin will automatically run the ``sonar:sonar`` goal after the main
build.

- Install the *Sonar Plugin*: *Manage Hudson*, *Manage Plugins*...
- *Manage Hudson*, *Configure System*, add a new Sonar installation.
- Configure your Hudson project (should only use the Sonar plugin with builds
  which execute once per day).  Tick the *Sonar*, *Post-build Action*.
- Keep the default settings.

Service
=======

To install Sonar as a service:

::

  bin\windows-x86-32\InstallNTService.bat
  bin\windows-x86-32\UninstallNTService.bat

Browse to http://localhost:9000/

Collect Data
============

Looks like the correct way to collect the Sonar data (using Maven) is to run
two separate commands:

::

  mvn clean install -Dtest=false -DfailIfNoTests=false
  mvn sonar:sonar

Note: The Hudson Sonar plugin will run the second command automatically...


.. _`The 2 minutes tutorial`: http://docs.codehaus.org/display/SONAR/The+2+minutes+tutorial
.. _`Full installation in 5 steps`: http://docs.codehaus.org/display/SONAR/Install+Sonar#InstallSonar-Fullinstallationin5steps
.. _`Declare the Sonar Maven Repository inside Nexus`: http://docs.codehaus.org/display/SONAR/Install+Sonar#InstallSonar-DeclaretheSonarMavenRepositoryinsideNexus
.. _`Collect data`: http://docs.codehaus.org/display/SONAR/Collect+data

