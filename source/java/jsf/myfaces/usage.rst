Usage
*****

Maven
=====

- See Maven notes, :doc:`maven`.
- `Instructions on how to use the new version of MyFaces`_

Template
========

A simple MyFaces project can be downloaded from:
https://localhost/svn/learn/java/myfaces-template/

This can be built using Maven 2:

::

  mvn package

Deploy to Tomcat:

::

  cp /home/patrick/development/java/learn/faces/myfaces-template/target/myfaces-template.war /opt/tomcat5/webapps/

Restart Tomcat... and run using http://localhost:8080/myfaces-template/.



.. _`Instructions on how to use the new version of MyFaces`: http://wiki.apache.org/myfaces/Using_MyFaces_in_a_Project_built_with_Maven

