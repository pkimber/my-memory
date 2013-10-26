Netbeans
********

Links
=====

- netbeans-freeform-maven-plugin_
- `Using maven 2 in Netbeans`_

Usage
=====

To create a Netbeans project from the Maven 2 ``pom.xml`` file:

::

  mvn netbeans-freeform:generate-netbeans-project

Issues
======

mvn.path
--------

R was getting this error message:

::

  C:\projects\adaptive\nbproject\mavencall.xml:8:
      Execute failed: java.io.IOException:
      Cannot run program "${mvn.path}" (in directory "C:\projects\adaptive"):
      CreateProcess error=2,
      The system cannot find the file specified BUILD FAILED (total time: 0 seconds)

To solve the problem:

http://www.techienuggets.com/CommentDetail?tx=7772

Go to, *Tools*, *Options*, *Miscellaneous*, *Ant*, *Manage Properties* and add
the line:

::

  mvn.path=mvn.bat

Run
---

Currently not possible to run the main class when using this plugin.  The run
command is mapped to install.

IDE
===

NetBeans - Maven, :doc:`../netbeans/maven`.




.. _netbeans-freeform-maven-plugin: http://mojo.codehaus.org/netbeans-freeform-maven-plugin/
.. _`Using maven 2 in Netbeans`: http://maven.apache.org/guides/mini/guide-ide-netbeans/guide-ide-netbeans.html

