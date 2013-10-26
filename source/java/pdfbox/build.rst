Build
*****

PDF Box is built from two SourceForge projects:

- PDFBox
- FontBox

PDFBox
======

http://www.pdfbox.org/

CVS - Windows
-------------

The source code is downloaded using CVS from:

::

  :pserver:anonymous@cvs.sourceforge.net:/cvsroot/pdfbox

I installed the source code to:

::

  C:\src\pdfbox\

CVS - Linux
-----------

::

  cd ~/src/
  cvs -d:pserver:anonymous@cvs.sourceforge.net:/cvsroot/pdfbox login
  cvs -z3 -d:pserver:anonymous@cvs.sourceforge.net:/cvsroot/pdfbox co -P pdfbox

Note: Could not get this project to build on Linux.  Received the following
message: ``Could not create task or type of type: propertyfile``.  This
appears to be an *ant* version related issue - but I have the correct version
(I think).

Build
-----

Use ANT to build the project.  You may need to set the Apache Forrest environment
variable.  See :doc:`../forrest/install` for more information.

::

  cd C:\src\pdfbox\
  ant

Two jar files will be produced.  One has a dependency on log4j, the other does
not.

::

  C:\src\pdfbox\lib\PDFBox-0.7.3-dev.jar
  C:\src\pdfbox\lib\PDFBox-0.7.3-dev-log4j.jar

**Note:** Do not use the jar file which has a dependency on log4j for any
project which is used by ColdFusion.  The versions of log4j are *not*
compatible.

*13/03/2006 10:14*

Could not build because the documentation build failed.  To solve the problem
remove ``website,`` from the following line in ``build.xml``:

::

  <target name="dist" depends="clean,package,javadoc,website,build.NET,checkstyle" description="Create zip distribution file">

Maven 2
-------

To add the jar file to the Maven 2 repository:

::

  cd C:\src\pdfbox\lib\
  mvn install:install-file -DgroupId=pdfbox -DartifactId=pdfbox -Dversion=0.7.3-dev -Dfile=PDFBox-0.7.3-dev.jar -Dpackaging=jar -DgeneratePom=true

To deploy to a remote Maven 2 repository (**Note:** This command will only work
at a Windows command prompt as the url is in Windows format):

::

  mvn deploy:deploy-file -DgroupId=pdfbox -DartifactId=pdfbox -Dversion=0.7.3-dev -Dfile=PDFBox-0.7.3-dev.jar -Dpackaging=jar -DgeneratePom=true -DrepositoryId=myserver -Durl=file:\\myserver\Maven2Repository\repository

Your projects will also require the use of the FontBox jar file.  This is built
using the following instructions:

FontBox
=======

http://www.fontbox.org/

The source code is downloaded using CVS from:

::

  :pserver:anonymous@cvs.sourceforge.net:/cvsroot/fontbox

I installed the source code to:

::

  C:\src\FontBox\

Use ANT to build the project:

::

  cd C:\src\FontBox\
  ant

One jar file will be produced:

::

  C:\src\FontBox\lib\FontBox-0.1.0-dev.jar

Maven 2
-------

To add the jar file to the Maven 2 repository:

::

  cd C:\src\FontBox\lib\
  mvn install:install-file -DgroupId=fontbox -DartifactId=fontbox -Dversion=0.1.0-dev -Dfile=FontBox-0.1.0-dev.jar -Dpackaging=jar -DgeneratePom=true

To deploy to a remote Maven 2 repository (**Note:** This command will only work
at a Windows command prompt as the url is in Windows format):

::

  mvn deploy:deploy-file -DgroupId=fontbox -DartifactId=fontbox -Dversion=0.1.0-dev -Dfile=FontBox-0.1.0-dev.jar -Dpackaging=jar -DgeneratePom=true -DrepositoryId=myserver -Durl=file:\\myserver\Maven2Repository\repository

