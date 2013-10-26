Eclipse
*******

Links
=====

Maven Eclipse Plugin
--------------------

Is used to generate Eclipse IDE files:

http://maven.apache.org/plugins/maven-eclipse-plugin/

Maven Integration for Eclipse
-----------------------------

...provides tight integration for Maven into the IDE... **for more information
see the *Eclipse* notes below**...

http://eclipse.org/m2e/

JIRA_

Project
=======

To generate an Eclipse project:

::

  mvn eclipse:eclipse

Note: Do not run this goal when using the Maven Eclipse Plugin.

Eclipse WTP
-----------

`WTP support`_

For the Eclipse, Web Tools Project:

::

  mvn -Dwtpversion=R7 eclipse:eclipse

**Note:** In a multi module project you must run this goal from the root
directory.

Source Code
-----------

`Getting the source code for a dependency`_:

If you use the Eclipse plugin, you can put this in your parent pom:

::

  <plugins>
    <plugin>
      <groupId>org.apache.maven.plugins</groupId>
      <artifactId>maven-eclipse-plugin</artifactId>
      <configuration>
        <downloadSources>true</downloadSources>
        <downloadJavadocs>true</downloadJavadocs>
      </configuration>
    </plugin>
  </plugins>

And then run ``mvn eclipse:eclipse`` (or don't add the plugin tag, and run
``mvn eclipse:eclipse -DdownloadSources=true -DdownloadJavadocs=true``).

Repository
==========

To create the ``M2_REPO`` classpath variable (the parameter is the path to the
Eclipse workspace):

::

  mvn -Declipse.workspace=C:\workspace\test eclipse:add-maven-repo

Resources
=========

*When running unit tests from Eclipse I can't resolve my test resources because
they are placed in test-classes*:

Three solutions:

- Just add ``src/test/resources`` to your tests classpath:

  In Eclipse:

  *Run*, *Classpath*, *Advanced*, *Add folder*

- Filter yours properties using this mvn command:

  ::

    mvn resources:resources resources:testResources>>>

- In Eclipse you must ensure that ``src/test/resources`` is moved in front of
  ``src/main/resources``:

  *Project properties*, *Java Build Path*, *Order and Export*

Source
======

To check remote repositories for sources:

::

  mvn -DdownloadSources=true eclipse:eclipse

Eclipse
=======

Maven Plug-in for Eclipse:

*Help*, *Install New Software*, *Add*, *Add Repository*, *OK*, tick *Maven
Integration for Eclipse*, *Next* etc...

===========  ======================================================
Name:        Maven Plugin
URL:         http://download.eclipse.org/technology/m2e/releases
===========  ======================================================

**Note**:

- Do not use the Maven goals ``eclipse:eclipse`` or ``eclipse:m2eclipse`` when
  using this plugin.
- Probably best to delete the ``.classpath``, ``.project`` files and the
  ``.settings`` folder before import existing projects.
- Do not import more than 4 or 5 projects at a time.  If you do, Eclipse will
  just white-screen and never recover!

Import
------

To import an existing project, see the notes above, then *File*, *Import*,
*Maven*, *Existing Maven Projects*...

Maven Nature
------------

If you don't import *Maven Projects*, you need to enable the Maven nature on
an Eclipse project before the Maven 2 plug-in features are available.
Right-click on the project that you want to add Maven support to and select
*Maven2*, *Enable*.

Live repository search for dependencies
---------------------------------------

Adding dependencies to a ``pom.xml`` is easy using the plug-in. Right-click on
the project's ``pom.xml`` and select ``Maven2``, ``Add Dependency``.

Run
---

*Run*, *External Tools*, *External Tools...*, *m2*, *New launch configuration*.

Issues
------

*Access restriction*

::

  Access restriction: The constructor BASE64Encoder() is not accessible due to restriction on required library C:\Program Files\Java\jdk1.5.0_16\jre\lib\rt.jar

Discussed with Simon B.  As a general rule, we should not be using any classes
with a package which start with ``sun.`` (these classes are normally found in
``rt.jar``).  These are the Sun run-time classes and are not part of the core
Java language e.g. they may not be available on an IBM virtual machine.  For
this reason, they might not be available on another JVM and Sun could (in
theory) remove them at any time.  For more information and a proper solution,
see Simon's email below and:
http://java.sun.com/products/jdk/faq/faq-sun-packages.html

::

  From: Simon B
  Sent: 16 December 2008 10:03
  To: Patrick Kimber
  Subject: Re: Access restriction in Eclipse

  Hi all,

  I found out a little more about this issue.  I don't want to sound pompous,
  or teach grannies to suck eggs :) so tell me if you've heard this already.

  Other than the genuinely restricted packages, such as 'com.sun.*', which I
  emailed about before, 'Access restriction' also happens if there is a
  mismatch in Eclipse between the actual JVM version on the compile classpath
  and the chosen Execution Environment for the project.  Skip to the next para
  if you don't want the explanation!  Basically, when a Java6 JVM is selected,
  but the project is set to 1.5 level compatibility, the JSE5 execution
  environment is also picked.  I'm guessing this is to do with the
  auto-generation of the '.classpath' file by Maven, as vanilla Eclipse would
  leave it set to 'Workspace Default'.  The execution environment also carries
  the accessibility rules, which are set up as 'forbid everything, then allow
  this named set of packages'...  The allowed set of packages is smaller for
  JSE5 as there is less in its rt.jar than in JSE6.  But its the JSE6 rt.jar
  that is actually in the classpath.  Therefore if you pick a class from a
  package that is in 6 but not 5, it will be 'forbidden'.  This is most notable
  with some 'javax.xml' sub-packages.

  The correct way the fix this is to configure the build path for the project
  in question, and go to the Libraries tab, select the JRE System Library, and
  click the Edit button.  In the dialog that appears, select Execution
  Environment and pick 'JavaSE-1.6' from the dropdown.  If you don't have that
  as a choice, click the 'Environments...' button, select JavaSE-1.6 in the
  list, and tick one of the Compatible JVM's.  OK your way out and rebuild if
  prompted.  Any remaining access restrictions are now genuine and should be
  coded out...  (Incidentally, if you pick 'Workspace Default' instead, then no
  access rules will be applied, but that's just avoiding the issue.. ;)  In the
  compiler options, it is worth setting 'Forbidden reference (access rules)'
  back to Error, for the reasons stated in the page linked in my other email.

  Its worth mentioning here also that when configuring the build path, on the
  Order and Export tab, you must ensure that the Java System Library is ahead
  of the Maven Dependencies (and/or Referenced Libraries if present), as this
  will ensure the compiler finds JVM classes in preference to those in other
  JARs, as will be the case at runtime.  It usually is, but for those of
  YM heritage that remember their 'process tools', it put the JVM last
  which caused all sorts of unexplainable runtime issues until it was spotted.
  ;)

  Hope this is of interest,
  Simon.

Changing the workspace settings, as suggested in this FAQ, will hide the
problem:

`Compilation errors on restricted classes`_

*Window*, *Preferences*, *Java*, *Compiler*, *Errors/Warnings*, *Deprecated and
restricted API*, *Forbidden reference (access rules)*...  set to *Warning*.


.. _JIRA: http://jira.codehaus.org/browse/MNGECLIPSE
.. _`WTP support`: http://maven.apache.org/plugins/maven-eclipse-plugin/wtp.html
.. _`Getting the source code for a dependency`: http://www.nabble.com/Getting-the-source-code-for-a-dependency-tf4325155s177.html
.. _`Compilation errors on restricted classes`: http://docs.codehaus.org/display/M2ECLIPSE/Project+FAQ#ProjectFAQ-Compilationerrorsonrestrictedclasses

