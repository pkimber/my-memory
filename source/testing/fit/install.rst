Install
*******

Links
=====

http://fit.c2.com/

FIT - Maven
===========

::

  <dependency>
    <groupId>com.c2.fit</groupId>
    <artifactId>fit</artifactId>
    <version>1.1</version>
  </dependency>

FitLibrary
==========

**Note**: The Maven 2 plugin for running fit tests is not compatible with the
FitLibrary.

Download
--------

Downloaded ``FitLibraryRunner20070217.zip`` from
https://sourceforge.net/projects/fitlibrary/

Extracted to:

::

  c:\src\FitLibraryRunner20070217\

Note: This archive includes the source code.

Maven
-----

*Remote Repository*

To deploy to a remote Maven 2 repository (**Note:** This command will only work
at a Windows command prompt as the url is in Windows format):

::

  cd c:\src\FitLibraryRunner20070217\
  mvn deploy:deploy-file -DgroupId=fit -DartifactId=FitLibraryRunner -Dversion=20070217 -Dfile=fitlibraryRunner.jar -Dpackaging=jar -DgeneratePom=true -DrepositoryId=myserver -Durl=file:\\myserver\Maven2Repository\repository

*Local Repository*

To install the ``jar`` file in your local repository:

::

  cd c:\src\FitLibraryRunner20070217\
  mvn install:install-file -DgroupId=fit -DartifactId=FitLibraryRunner -Dversion=20070217 -Dfile=fitlibraryRunner.jar -Dpackaging=jar -DgeneratePom=true

pom.xml
-------

::

  <dependency>
    <groupId>fit</groupId>
    <artifactId>FitLibraryRunner</artifactId>
    <version>20070217</version>
  </dependency>

