Highlighter
***********

.. highlight:: xml

Subversion
==========

Check out the highligher from the Subversion repository:

http://svn.apache.org/repos/asf/lucene/java/trunk/contrib/highlighter

Maven 2
=======

Convert the highlighter project to Maven 2 by copying this ``pom.xml`` file to
the root of the highlighter project:

::

  <?xml version="1.0"?>
  <project>
    <modelVersion>4.0.0</modelVersion>
    <groupId>org.apache.lucene</groupId>
    <artifactId>lucene-highlighter</artifactId>
    <name>Lucene Highlighter</name>
    <version>2.0.0</version>
    <description>This is the highlighter for apache lucene java</description>
    <url>http://lucene.apache.org</url>
    <licenses>
      <license>
        <name>The Apache Software License, Version 2.0</name>
        <url>http://www.apache.org/licenses/LICENSE-2.0.txt</url>
        <distribution>repo</distribution>
        <comments></comments>
      </license>
    </licenses>
    <organization>
      <name>Apache Software Foundation</name>
      <url>http://www.apache.org</url>
    </organization>
    <dependencies>
      <dependency>
        <groupId>org.apache.lucene</groupId>
        <artifactId>lucene-core</artifactId>
        <version>2.0.0</version>
        <scope>compile</scope>
      </dependency>
    </dependencies>

    <build>
      <sourceDirectory>
        src/java
      </sourceDirectory>
    </build>
  </project>

Build the project and install to the Maven 2 repository:

::

  mvn install

Include in your project using this Maven 2 dependency:

::

  <dependency>
    <groupId>org.apache.lucene</groupId>
    <artifactId>lucene-highlighter</artifactId>
    <version>2.0.0</version>
  </dependency>

Sample
======

- Here is some sample code from *Lucene in Action*: HighlightIt.java_.
- Here is the sample code from the highlighter project: HighlighterTest.java_


.. _HighlightIt.java: ../../misc/howto/lucene/HighlightIt.java
.. _HighlighterTest.java: http://svn.apache.org/repos/asf/lucene/java/trunk/contrib/highlighter/src/test/org/apache/lucene/search/highlight/HighlighterTest.java
