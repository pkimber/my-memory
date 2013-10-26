Setup
*****

- http://lucene.apache.org/

Maven
=====

::

  <dependency>
      <groupId>org.apache.lucene</groupId>
      <artifactId>lucene-core</artifactId>
      <version>2.4.1</version>
  </dependency>

Build from SVN
==============

Lucene Core
-----------

- Checkout Lucene from the Subversion repository:
  http://svn.apache.org/repos/asf/lucene/java/trunk

  *Note: The CVS repository is still accessible but is out of date.*

- I downloaded to:

  ::

    C:\src\lucene-svn\

- To build (using ANT):

  ::

    cd C:\src\lucene-svn\
    ant

- The following jar file is produced:

  ::

    C:\src\lucene-svn\build\lucene-core-2.0-rc1-dev.jar

Using **Maven 2**:

- To add the jar file to the Maven 2 repository:

  ::

    cd C:\src\lucene-svn\build\
    mvn install:install-file -DgroupId=lucene -DartifactId=lucene-core -Dversion=2.0-rc1-dev -Dfile=lucene-core-2.0-rc1-dev.jar -Dpackaging=jar -DgeneratePom=true

- To deploy to a remote Maven 2 repository (**Note:** This command will only
  work at a Windows command prompt as the url is in Windows format):

  ::

    mvn deploy:deploy-file -DgroupId=lucene -DartifactId=lucene-core -Dversion=2.0-rc1-dev -Dfile=lucene-core-2.0-rc1-dev.jar -Dpackaging=jar -DgeneratePom=true -DrepositoryId=myserver -Durl=file:\\myserver\Maven2Repository\repository

Snowball Stemming
-----------------

- To build (using ANT):

  ::

    cd C:\src\lucene-svn\contrib\snowball\
    ant

- The following jar file is produced:

  ::

    C:\src\lucene-svn\build\contrib\snowball\lucene-snowball-2.0-rc1-dev.jar

Using **Maven 2**:

- To add the jar file to the Maven 2 repository:

  ::

    cd C:\src\lucene-svn\build\contrib\snowball\
    mvn install:install-file -DgroupId=lucene -DartifactId=lucene-snowball -Dversion=2.0-rc1-dev -Dfile=lucene-snowball-2.0-rc1-dev.jar -Dpackaging=jar -DgeneratePom=true

- To deploy to a remote Maven 2 repository (**Note:** These commands only work
  in a Windows command prompt as the url is in Windows format):

  ::

    mvn deploy:deploy-file -DgroupId=lucene -DartifactId=lucene-snowball -Dversion=2.0-rc1-dev -Dfile=lucene-snowball-2.0-rc1-dev.jar -Dpackaging=jar -DgeneratePom=true -DrepositoryId=myserver -Durl=file:\\myserver\Maven2Repository\repository

Index Accessor
--------------

- Checkout
  http://myserver/svn/projects/lucene-access/branches/lucene-access
- I checked out to:
 
  ::
 
    C:\src\lucene-access\

- Read the *build* instructions within the site documentation...

.. Lucene Setup (Legacy Notes)
.. ===========================
..
.. Downloaded ``lucene-1.4.3.zip``
..
.. Extracted to:
..
.. ::
..
..   C:\Tools\lucene-1.4.3\
..
.. See "Understanding the class path and package names":
..
.. http://java.sun.com/j2se/1.3/docs/tooldocs/win32/classpath.html
..
.. See:
..
.. http://lucene.apache.org/java/docs/demo.html
..
.. Tried running:
..
.. ::
..
..   java -classpath c:\tools\lucene-1.4.3 org.apache.lucene.demo.IndexFiles c:\tools\lucene-1.4.3\src
..
.. Got the following error:
..
.. ::
..
..   Exception in thread "main" java.lang.NoClassDefFoundError: org/apache/lucene/demo/IndexFiles
..
.. Conclusion: We must include the name of the actual jar in the classpath
..
.. ::
..
..   java -classpath lucene-1.4.3.jar;lucene-demos-1.4.3.jar org.apache.lucene.demo.IndexHTML
..
