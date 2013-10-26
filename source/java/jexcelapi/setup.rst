Setup
*****

Install
=======

Download
--------

- Download ``jexcelapi_2_6_6.zip`` from
  http://sourceforge.net/projects/jexcelapi/.

Extract
-------

I extracted to:

::

  C:\src\jexcel\

Maven
=====

Local Repository
----------------

::

  cd C:\src\jexcelapi\
  mvn install:install-file -DgroupId=jexcelapi -DartifactId=jxl -Dversion=2.6.6 -Dfile=jxl.jar -Dpackaging=jar -DgeneratePom=true

Remote Repository
-----------------

**Note:** This command will only work at a Windows command prompt as the url is
in Windows format:

::

  cd C:\src\jexcel\jexcelapi\
  mvn deploy:deploy-file -DgroupId=jexcelapi -DartifactId=jxl -Dversion=2.6.6 -Dfile=jxl.jar -Dpackaging=jar -DgeneratePom=true -DrepositoryId=myserver -Durl=file:\\myserver\Maven2Repository\repository

pom.xml
-------

Add the dependency to the ``pom.xml`` file:

::

  <dependency>
    <groupId>jexcelapi</groupId>
    <artifactId>jxl</artifactId>
    <version>2.6.6</version>
  </dependency>

