Schema
******

- Database development with Apache Derby, Part 2
  http://www-128.ibm.com/developerworks/opensource/library/os-ad-trifecta3/

Schema
======

To view the schema of a database in:

::

  C:\temp\continuum\database\

cygwin
------

Setup the classpath:

::

  CLASSPATH="C:\tools\db-derby-10.1.2.1-bin\lib\derby.jar;C:\tools\db-derby-10.1.2.1-bin\lib\derbytools.jar"
  export CLASSPATH

Check
=====

Make sure everything is working:

::

  java org.apache.derby.tools.sysinfo

Display
=======

Display the schema:

::

  java org.apache.derby.tools.dblook -d jdbc:derby:/temp/continuum/database

