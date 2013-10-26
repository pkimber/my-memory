Add jar to local repository
***************************

Make sure the jar file does not exist.

See repository.html for more information.

Maven 2
=======

`Guide to installing 3rd party JARs`_

To install a JAR in the local repository use the following command:

::

  mvn install:install-file -Dfile=<path-to-file> -DgroupId=<group-id> \
      -DartifactId=<artifact-id> -Dversion=<version> -Dpackaging=<packaging>

Sample
------

::

  mvn install:install-file -DgroupId=com.sample.lucene -DartifactId=lucene-core -Dversion=2.2.0 -Dfile=LUCENE-core-2.2.0.jar -Dpackaging=jar -DgeneratePom=true

(I don't know if the ``generatePom`` has any effect at all).

..
..   Needed to add this jar file to the repository:
..
.. ---
.. C:\Tools\textmining\tm-extractors-0.4.jar
.. ---
..
..   My Maven 2 repository is in:
..
.. ---
.. C:\repository\maven2
.. ---
..
..   Had to make up my own name for the main folder, so created the folder:
..
.. ---
.. C:\repository\maven2\textmining\
.. ---
..
..   The jar file dicates the name of the folders below here:
..
.. ---
.. C:\repository\maven2\textmining\tm-extractors\0.4\
..                      ^          ^             ^
..                      |          |             |
..             Name of my choice   |             |
..                    First part of jar name     |
..                                Version from the jar file name
.. ---
..
..   Placed the jar file into this folder:
..
.. ---
.. C:\repository\maven2\textmining\tm-extractors\0.4\tm-extractors-0.4.jar
.. ---
..
..   Had to create a POM file in the same folder:
..
.. ---
.. C:\repository\maven2\textmining\tm-extractors\0.4\tm-extractors-0.4.pom
.. ---
..
..   The contents of this are fairly simple:
..
.. ---
.. <project>
..   <modelVersion>4.0.0</modelVersion>
..   <groupId>textmining</groupId>
..   <artifactId>tm-extractors</artifactId>
..   <version>0.4</version>
.. </project>
.. ---
..
..   (I guess the <<<modelVersion>>> refers to the version of Maven)
..
..   The associated <dependency> information in the pom file is fairly simple:
..
.. ---
..     <dependency>
..       <groupId>textmining</groupId>
..       <artifactId>tm-extractors</artifactId>
..       <version>0.4</version>
..     </dependency>
.. ---
..
..   <<Note>>: See repository.html for information on which repository to use
..   for deploying dependencies.
..
.. ~~ *Maven 1
..
..   http://maven.apache.org/faq.html#add-jar-to-local-repository
..
..   How do I add a JAR from a non-Maven project to my local repository?
..
..   If it is a JAR that cannot be uploaded to Ibiblio because of a license, or it
..   is private, you must manually copy it to your local repository.
..   After picking a sensible group ID, and making sure the filename is in the
..   format artifactId-version.jar, copy it to
..
.. ---
.. ${maven.repo.local}/groupId/jars/artifactId-version.jar.
.. ---



.. _`Guide to installing 3rd party JARs`: http://maven.apache.org/guides/mini/guide-installing-3rd-party-jars.html

