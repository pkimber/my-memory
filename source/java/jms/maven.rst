Maven
*****

Download
========

Download "*1.1 API Documentation, Jar and Source*" (``jms-1_1-fr-apidocs.zip``)
from http://java.sun.com/products/jms/docs.html

Install
=======

Extract ``jms1.1/lib/jms.jar`` from the archive to a temporary folder.  Install
to your local repository:

::

  mvn install:install-file -DgroupId=javax.jms -DartifactId=jms -Dversion=1.1 -Dpackaging=jar -Dfile=jms.jar -DgeneratePom=true

POM
===

The entry for the ``pom.xml``:

::

  <dependency>
    <groupId>javax.jms</groupId>
    <artifactId>jms</artifactId>
    <version>1.1</version>
  </dependency>

