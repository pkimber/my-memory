Install
*******

Windows - Server
================

Aim: To create a simple Java installation which can be easily updated.

- Download and install the version of Java you want to use.  I installed to:

  ::

    C:\Program Files (x86)\Java\jdk1.6.0_11
    C:\Program Files (x86)\Java\jre6

- Archive the two Java folders:

  ::

    C:\Program Files (x86)\Java\jdk1.6.0_11.zip
    C:\Program Files (x86)\Java\jre6.zip

- Move the two archives away from this folder.
- Uninstall the JDK and JRE.
- Extract the two archives to a folder (which does not contain spaces in the
  path) e.g:

  ::

    E:\Software\java\jdk1.6.0_11\
    E:\Software\java\jre6\

- Download and install Junction, :doc:`../windows/symbolic-links`, (we will use
  this to create a symbolic link allowing us to easily change the version of
  Java in future).
- Create a symbolic link (which will become our ``JAVA_HOME``):

  ::

    E:
    cd \Software\java\
    junction.exe jdk jdk1.6.0_11

    Created: E:\Software\java\jdk
    Targetted at: E:\Software\java\jdk1.6.0_11

- *My Computer*, *Properties*, *Advanced*, *Environment Variables*:

  - Change ``JAVA_HOME`` to point at our new symbolic link:

      ::

        E:\Software\java\jdk

- Make sure the ``Path`` environment variable does not contain any reference to
  Java folders.
- Stop all Java applications and services.
- Remove any old versions of Java which you have installed.
- Remove and re-install any Tomcat services which you have installed.  For
  notes, see Tomcat, Install - Windows, Service,
  :doc:`../tomcat/install-windows`.
