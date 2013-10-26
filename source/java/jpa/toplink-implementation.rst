TopLink Implementation
**********************

Links
=====

- `TopLink Essential jar for Spring-Kickstart project`_
- spring-kickstart_
- http://spring-kickstart.googlecode.com/svn/trunk/kickstart/pom.xml
- `TopLink Essentials 2.0 and maven repository`_

Maven 2 - Repository
====================

Add the following repository to the ``pom.xml`` file:

::

  <repositories>
    <repository>
      <id>java.net</id>
      <url>https://maven-repository.dev.java.net/nonav/repository</url>
      <layout>legacy</layout>
    </repository>
  </repositories>

and the following dependency:

::

  <dependency>
    <groupId>javax.persistence</groupId>
    <artifactId>toplink-essentials</artifactId>
    <version>1.0</version>
  </dependency>


.. _`TopLink Essential jar for Spring-Kickstart project`: http://www.nabble.com/TopLink-Essential-jar-for-Spring-Kickstart-project-t2632228s2369.html
.. _spring-kickstart: http://code.google.com/p/spring-kickstart/
.. _`TopLink Essentials 2.0 and maven repository`: http://weblogs.java.net/blog/guruwons/archive/2007/02/toplink_essenti_1.html

