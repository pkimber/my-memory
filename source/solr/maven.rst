Maven
*****

To install the SOLR jar file into the Maven 2 repository.

Build
=====

:doc:`install` for notes on how to build the SOLR jar file.

Install
=======

Install the jar file into the Maven 2 repository:

::

  cd C:\src\solr\dist\
  mvn install:install-file -DgroupId=apache -DartifactId=solr -Dversion=1.2-dev-incubating -Dfile=apache-solr-1.2-dev-incubating.jar -Dpackaging=jar -DgeneratePom=true

pom
===

The dependency section in the ``pom.xml`` for this jar file is:

::

      <dependency>
        <groupId>org.apache</groupId>
        <artifactId>solr</artifactId>
        <version>1.2-dev-incubating</version>
      </dependency>

