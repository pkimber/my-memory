Build
*****

Instructions
============

http://wiki.apache.org/myfaces/Building_With_Maven

Install Maven 2 Plugin
======================

See :doc:`../maven/maven2-plugin`

Checkout
========

::

  cd ~/src
  svn checkout https://svn.apache.org/repos/asf/myfaces/current myfaces

Build
=====

::

  cd myfaces/build/
  mvn -Dmaven.test.failure.ignore=true install

Install the Maven, MyFaces archetype
====================================

::

  cd ~/src
  svn co http://svn.apache.org/repos/test/myfaces/maven-myfaces-plugins/myfaces-archetype myfaces-archetype
  cd myfaces-archetype/
  mvn install

Create a MyFaces Project
========================

::

  cd ~/development/java/learn/faces/
  mvn archetype:create -DarchetypeGroupId=org.apache.myfaces -DarchetypeArtifactId=myfaces-archetype -DarchetypeVersion=1.0-SNAPSHOT -DgroupId=myfaces-template -DartifactId=myfaces-template
  cd myfaces-template/
  mvn package

