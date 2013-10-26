Repository
**********

- http://www.ibiblio.org/maven/
- http://www.ibiblio.org/maven2/
- http://repo.mergere.com/maven2/

Eclipse
=======

Eclipse Repository Browser (Must have MavenIDE installed):

Window, Show View, Other, Maven, Repository Browser

Web Search
==========

To search the repository can use the following web site:

http://maven.ozacc.com/

Dependencies
------------

*Updating of Dependency POM's*

http://www.nabble.com/updating-of-dependency-pom%27s-t1288191.html

My suggestion, if you need to customise something, is to deploy the POM and the
original or modified artifact under your own group ID in the repository. So
maybe something like:

::

  org.jboss.ports.commons-foo : commons-foo : 1.0

This would be much clearer and more reliable.

*What is the best practice in case of dependencies that are not hosted anywhere?*

http://www.nabble.com/-M2-dependencies-libraries-that-are-not-hosted---best-practice-t1291817.html

I think the MAVEN best practice is to set up a corporate repository with the
specific jars and then add that repo to your project pom.

Repository
==========

Specify additional repositories:

- In the :doc:`settings`.
- In your ``pom.xml`` file as follows:

  ::

      <repositories>
        <repository>
          <id>maven2</id>
          <url>http://repo1.maven.org/maven2</url>
        </repository>
        <repository>
          <id>ibiblio</id>
          <url>http://www.ibiblio.org/maven2</url>
        </repository>
        <repository>
          <id>myserver</id>
          <url>http://myserver/repository</url>
        </repository>
      </repositories>

java.net
--------

::

    <repositories>
      <repository>
        <id>java.net.maven.1</id>
        <url>http://download.java.net/maven/1/</url>
        <layout>legacy</layout>
      </repository>
      <repository>
        <id>java.net.maven.2</id>
        <url>http://download.java.net/maven/2/</url>
        <layout>default</layout>
      </repository>
    </repositories>

