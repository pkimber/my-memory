Issues
******

MySQL
=====

Our MySQL database was on another server.  To allow our server to access the
MySQL database, I had to run the following commands at the MySQL prompt:

::

  mysql> grant all privileges on sonar.* to 'sonar'@'192.168.120.85' identified by 'tootinG';
  mysql> flush privileges;

No Sonar installation on this job
=================================

This message was displayed at the end of the Maven build when using the Hudson
Sonar plugin.

In Hudson, *Manage Hudson*, *Configure System*, add a new Sonar installation.

