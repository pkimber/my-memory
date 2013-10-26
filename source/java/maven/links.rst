Links
*****

Archetypes
==========

- `Don't use org.apache.maven.archetypes... Use Codehaus archetypes!`_
- `Maven Archetypes for Web Applications`_
- `How to create a Spring bundle project in maven (and eclipse...)`_
- `MyFaces Archetypes for Maven`_
- `Creating a maven archetype for acegi and springframework`_
- `Atlassian Plugin Archetype`_
- `7 simple reasons to use AppFuse`_

Articles
========

- `Building Web Applications with Maven 2`_
- `Get the most out of Maven 2 site generation`_
- `Maven: Building Complex Systems`_
- `Keep Your Maven Projects Portable Throughout the Build Cycle`_
- `Windows Maven Menu Options`_

Blogs
=====

- `Summary of Maven How-Tos`_
- `Using Maven 2`_
- `Corporate https maven2 repositories`_
- `The pain of migrating to Maven`_
- `Improved snapshots in Maven2`_

Books
=====

- `Better Builds with Maven`_
- `Maven: The Definitive Guide`_

Build
=====

- Hudson, :doc:`../hudson/links`
- `Provides console based editing of the project's pom.xml`_
  as well as helpful information on transtitive dependencies.

Commercial
==========

- http://www.sonatype.com/

Embedder
========

- `The Maven Embedder`_

Eclipse
=======

- `Building Eclipse Plugins with Maven 2`_

Enterprise
==========

A distribution that consists of all Maven related projects an enterprise user
might need: Continuum, Archiva, WebDAV (for artifact and site deployment),
iDisk support, Centralized user database and data storage.

- http://docs.codehaus.org/display/MAVENENTERPRISE/Home}
  Maven Enterprise - WIKI
- `Maven Enterprise - Issue Tracker`_
- `Sonar is a continuous quality control tool for Java applications`_.
  Its basic purpose in life is to join your existing continuous integration
  tools to place all your development projects under quality control.

Lifecycle
=========

- `Introduction to the lifecycle.`_

Mailing List
============

- `Nabble, Maven Users`_

.NET
====

- `Welcome to the Maven CSharp Plugins Project`_

Plugins
=======

- http://maven.apache.org/plugins/index.html
- `Maven 2 Changes Plugin`_
- `QALab Plugin`_
- `DTDDoc Maven plugin`_
- `Merve Tomcat Launcher Eclipse Plug-In`_
- `Lint4j is a static Java source and byte code analyzer`_
  that detects locking and threading issues, performance and scalability
  problems, and checks complex contracts such as Java serialization by
  performing type, data flow, and lock graph analysis.
- `The source plugin can be used to create a jar file of the project sources`_.
- maven-shade-plugin_
  Package the artifact in an uber-jar, including its dependencies and to shade
  - i.e. rename - the packages of some of the dependencies.

Build
-----

Build Helper
------------

- http://mojo.codehaus.org/build-helper-maven-plugin/
  This plugin contains various small independent goals to assist with Maven build
  lifecycle.

maven-buildnumber-plugin
------------------------

- `maven-buildnumber-plugin`_
- `How to Use the Maven Build Number Plugin`_
- `Maven: Keep track of your Build Number`_

Maven 2 Source Plugin
---------------------

- `This plugin bundles all the generated sources into a jar archive`_.

Database
--------

- `Hibernate3 Maven Plugin`_ - also see -
  `Agile database development with Spring and Hibernate - Try the Hibernate 3 Maven Plugin`_
- `SQL Maven Plugin`_

Dependencies
------------

Unused Dependencies
-------------------

::

  Maven Users List <users@maven.apache.org>
  date     21-Feb-2007 10:49
  subject  Re: unused dependencies

  would like to know if there is a way to check automatically what
  are the unused dependencies.

There's dependency-analyzer:analyze in the sandbox:
https://svn.apache.org/repos/asf/maven/sandbox/plugins/maven-dependency-analyzer-plugin/
which can provide this information.  It requires:
https://svn.apache.org/repos/asf/maven/sandbox/shared/maven-dependency-analyzer/
You'll have to build from source, but it's pretty easy to do.

Versions
--------

- http://mojo.codehaus.org/versions-maven-plugin/
  The Versions Plugin is used when you want to manage the versions of
  artifacts in a project's POM.

Deploy
------

- https://wagon-svn.dev.java.net/
  This extension module to Maven allows you to deploy artifacts and sites to a
  Subversion repository (in Maven jargon, this module is classified as a Wagon
  provider).

Eclipse
-------

- m2eclipse, :doc:`mvn-plugin-eclipse`
- `Eclipse Plugin`_

Installer
---------

- `NSIS Plugin`_
  The NSIS Plug-in has been developed to generate Windows Installers for Maven
  managed projects.  The Plug-in uses Nullsoft Scriptable Install System to
  generate windows installers.

Netbeans
--------

- Netbeans Plugins, :doc:`mvn-plugin-netbeans`

Reporting
---------

- `Maven Reporting Plug-ins, Part 2: Coverage and Stylistic Tools`_
- http://sonar.codehaus.org/
  SONAR is a code quality management platform.
- `Maven Author Plugin generates an HTML report showing information gathered from other Maven reports`_.
- `Maven 2 JXR Plugin`_
- `ARAT - A Release Audit Tool`_
- http://mojo.codehaus.org/maven-springbeandoc-plugin/
  Spring BeanDoc Plugin

Testing
-------

- `JMeter Maven Plugin`_

Web Services
------------

- `JAXB2 Maven2 plugin`_
- `Maven 2 - JAX-WS - Plugin`_

Proxy
=====

- `Lightweight servlet engine that sits on your main server and imitates ibiblio`_
- `Proximity is in function somewhere between http-proxy and proactive-mirror (am I speaking nonsense?)`_

Artifactory
-----------

- `Artifactory is a Maven2 proxy repository with advanced features`_.
- `Setting up a Maven repository by Avneet Mangat`_

Archiva
-------

- `Archiva (the Maven repository manager)`_
- `Apache Archiva - Part One`_

Podcast
=======

- `Getting Serious About Build Automation: Using Maven in the Real World`_

POM
===

- http://maven.apache.org/pom.html

Repository Search
=================

- http://www.mavenjava.com/
- http://www.mvnbrowser.com/
- http://mvnrepository.com
- http://www.mvnregistry.com/
- http://m2-repoindex.krecan.net/

Site
====

- `This project develops a skin for Maven2 site plugin`_,
  which is designed to work nicely with java.net template engine, so that you
  can use Maven2 for generating project website contents.
- `Insight Site Skin`_

Tools
=====

- `Dependency Analyzer is a utility for visualizing Maven2 dependency graphs`_.

Tutorial
========

- Introduction to Apache Maven 2 Copy of article from `IBM Developer Works`_:

  ::

    ../misc/maven/j-mavenv2-a4.pdf


.. _`Don't use org.apache.maven.archetypes... Use Codehaus archetypes!`: http://jee-bpel-soa.blogspot.com/2009/06/dont-use-orgapapchemavenarchetypes.html
.. _`Maven Archetypes for Web Applications`: http://www.webtide.com/resources.jsp
.. _`How to create a Spring bundle project in maven (and eclipse...)`: http://www.springframework.org/node/361
.. _`MyFaces Archetypes for Maven`: http://wiki.apache.org/myfaces/MyFaces_Archetypes_for_Maven
.. _`Creating a maven archetype for acegi and springframework`: http://www.gridshore.nl/blog/index.php?/archives/55-Creating-a-maven-archetype-for-acegi-and-springframework.html
.. _`Atlassian Plugin Archetype`: http://confluence.atlassian.com/display/CONFEXT/Atlassian+Plugin+Archetype
.. _`7 simple reasons to use AppFuse`: http://raibledesigns.com/page/rd?entry=7_simple_reasons_to_use
.. _`Building Web Applications with Maven 2`: http://today.java.net/pub/a/today/2007/03/01/building-web-applications-with-maven-2.html
.. _`Get the most out of Maven 2 site generation`: http://www.javaworld.com/javaworld/jw-02-2006/jw-0227-maven.html
.. _`Maven: Building Complex Systems`: http://www.ddj.com/dept/java/186100398
.. _`Keep Your Maven Projects Portable Throughout the Build Cycle`: http://www.devx.com/Java/Article/32386
.. _`Windows Maven Menu Options`: http://coderoshi.blogspot.com/2007/01/windows-maven-menu-options.html
.. _`Summary of Maven How-Tos`: http://www.sonatype.com/people/2009/04/summary-of-maven-how-tos/
.. _`Using Maven 2`: http://communitygrids.blogspot.com/2005/11/using-maven-2-part-1.html
.. _`Corporate https maven2 repositories`: http://www.coffeebreaks.org/blogs/?p=37
.. _`The pain of migrating to Maven`: http://weblogs.java.net/blog/zarar/archive/2006/12/the_pain_of_mig_1.html
.. _`Improved snapshots in Maven2`: http://blogs.maven.org/brett/2005/04/15/1113510156000.html
.. _`Better Builds with Maven`: http://www.mergere.com/m2book_download.jsp
.. _`Maven: The Definitive Guide`: http://www.sonatype.com/book/
.. _`Provides console based editing of the project's pom.xml`: http://mojo.codehaus.org/pomtools-maven-plugin/
.. _`The Maven Embedder`: http://people.apache.org/~jvanzyl/embedder/
.. _`Building Eclipse Plugins with Maven 2`: http://www.eclipse.org/articles/article.php?file=Article-Eclipse-and-Maven2/index.html
.. _`Maven Enterprise - Issue Tracker`: http://jira.codehaus.org/browse/MAVENENTERPRISE
.. _`Sonar is a continuous quality control tool for Java applications`: http://sonar.hortis.ch/
.. _`Introduction to the lifecycle.`: http://docs.codehaus.org/display/MAVENUSER/introduction-to-the-lifecycle
.. _`Nabble, Maven Users`: http://www.nabble.com/Maven---Users-f178.html
.. _`Welcome to the Maven CSharp Plugins Project`: http://maven-csharp.javaforge.com/index.html
.. _`Maven 2 Changes Plugin`: http://maven.apache.org/plugins/maven-changes-plugin/
.. _`QALab Plugin`: http://qalab.sourceforge.net/maven/index.html
.. _`DTDDoc Maven plugin`: http://dtddoc.sourceforge.net/maven2/
.. _`Merve Tomcat Launcher Eclipse Plug-In`: http://merve.sourceforge.net/
.. _`Lint4j is a static Java source and byte code analyzer`: http://www.jutils.com/
.. _`The source plugin can be used to create a jar file of the project sources`: http://maven.apache.org/plugins/maven-source-plugin/
.. _maven-shade-plugin: http://maven.apache.org/plugins/maven-shade-plugin/
.. _`maven-buildnumber-plugin`: http://commons.ucalgary.ca/projects/maven-buildnumber-plugin/introduction.html
.. _`How to Use the Maven Build Number Plugin`: http://commons.ucalgary.ca/projects/maven-buildnumber-plugin/howto.html
.. _`Maven: Keep track of your Build Number`: http://mikenereson.blogspot.com/2007/02/maven-keep-track-of-your-build-number.html
.. _`This plugin bundles all the generated sources into a jar archive`: http://maven.apache.org/plugins/maven-source-plugin/
.. _`Hibernate3 Maven Plugin`: http://mojo.codehaus.org/maven-hibernate3/hibernate3-maven-plugin/
.. _`Agile database development with Spring and Hibernate - Try the Hibernate 3 Maven Plugin`: http://jroller.com/page/xwarzee?entry=agile_database_development_with_spring
.. _`SQL Maven Plugin`: http://mojo.codehaus.org/sql-maven-plugin/
.. _`Eclipse Plugin`: http://docs.codehaus.org/display/MAVENUSER/Eclipse+Plugin
.. _`NSIS Plugin`: http://mindtreeinsight.sourceforge.net/releng/maven-nsis-plugin/index.html
.. _`Maven Reporting Plug-ins, Part 2: Coverage and Stylistic Tools`: http://www.informit.com/guides/content.aspx?g=java&seqNum=518
.. _`Maven Author Plugin generates an HTML report showing information gathered from other Maven reports`: http://mvn-author-plug.sourceforge.net/
.. _`Maven 2 JXR Plugin`: http://maven.apache.org/plugins/maven-jxr-plugin/
.. _`ARAT - A Release Audit Tool`: http://code.google.com/p/arat/
.. _`JMeter Maven Plugin`: http://wiki.apache.org/jakarta-jmeter/JMeterMavenPlugin
.. _`JAXB2 Maven2 plugin`: https://maven-jaxb2-plugin.dev.java.net/
.. _`Maven 2 - JAX-WS - Plugin`: mvn-plugin-jax-ws.html
.. _`Lightweight servlet engine that sits on your main server and imitates ibiblio`: http://maven-proxy.codehaus.org/
.. _`Proximity is in function somewhere between http-proxy and proactive-mirror (am I speaking nonsense?)`: http://proximity.abstracthorizon.org/
.. _`Artifactory is a Maven2 proxy repository with advanced features`: http://www.jfrog.org/sites/artifactory/latest/
.. _`Setting up a Maven repository by Avneet Mangat`: http://www.theserverside.com/tt/articles/content/SettingUpMavenRepository/article.html
.. _`Archiva (the Maven repository manager)`: http://maven.apache.org/archiva/
.. _`Apache Archiva - Part One`: http://coderoshi.blogspot.com/2006/12/apache-archiva-part-one.html
.. _`Getting Serious About Build Automation: Using Maven in the Real World`: http://skillsmatter.com/podcast/java-jee/getting-serious-about-build-automation-using-maven-in-the-real-world
.. _`This project develops a skin for Maven2 site plugin`: https://maven-javanet-skin.dev.java.net/
.. _`Insight Site Skin`: http://mindtreeinsight.sourceforge.net/releng/insight-site-skin/index.html
.. _`Dependency Analyzer is a utility for visualizing Maven2 dependency graphs`: http://sourceforge.net/projects/dep-analyzer/
.. _`Introduction to Apache Maven 2`: ../../misc/maven/j-mavenv2-a4.pdf
.. _`IBM Developer Works`: https://www6.software.ibm.com/developerworks/education/j-mavenv2/

