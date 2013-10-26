Install
*******

Download
========

Download ``jcr-1.0.jar`` from http://www.day.com/maven/jsr170/jars/jcr-1.0.jar

I downloaded to:

::

  C:\downloads\day\jcr-1.0.jar

Install
=======

::

  cd C:\downloads\day\
  mvn deploy:deploy-file -DgroupId=javax.jcr -DartifactId=jcr -Dversion=1.0 -Dfile=jcr-1.0.jar -Dpackaging=jar -DgeneratePom=true -DrepositoryId=myserver -Durl=file:\\myserver\Maven2Repository\repository

