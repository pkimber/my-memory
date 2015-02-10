Java
****

Links
=====

`Installing Sun's Java on SUSE Linux`_

Install
=======

Adding the Java Installation Source
-----------------------------------

- Start YaST
- Choose Software/Installation Source
- Choose Add/FTP...
- As server name enter a openSUSE mirror, for example "ftp.gwdg.de" (without
  the quotes).  Look at the mirror list to find a mirror near your location.

  I had to use the example above to get it working.

  ::

    ftp.gwdg.de

  Note: I think the mirror name has to be translated e.g. the mirror for
  ``ftp.gwdg.de`` is http://ftp.gwdg.de/pub/opensuse/.  I think ``ftp.gwdg.de``
  is combined with the path below to find the ``inst-source-java`` folder.

- Under *Directory on Server*, Enter:

::

  pub/opensuse/distribution/SL-10.0-OSS/inst-source-java/

- Press OK to finish

Installing Java Packages
------------------------

Now you can install the Java packages with YaST (Software/Software Management).
If you choose Filter *Search* and enter *Sun* you'll quickly find them.

Note: Don't forget to install ``java-1_4_2-sun-plugin`` or
``java-1_5_0-sun-plugin`` if you want Java support for Firefox.

Switching between two different Java JREs or SDKs
-------------------------------------------------

The current Java packages use the update-alternatives command. It creates
symbolic links to the common Java binaries of the currently used Java version.
This can be used to switch between different versions of installed Java JREs
and SDKs (e.g. Sun Java 1.5, Sun Java 1.4.2 and IBM Java 1.4.2).

As root, you can call

::

  update-alternatives --config java

to change all JRE-related links to one special JRE version

and

::

  update-alternatives --config javac

to change all JDK-related links to one special SDK version

These commands will provide you with a menu that lists all possible JREs or
SDKs.

Location
========

Have a look in the following folder for symbolic links to java:

::

  /usr/lib/jvm/

Old Notes (I think)
===================

To install a new jdk on SUSE Linux:

From Sun's Java site downloaded:

::

  jdk-1_5_0_<version>-linux-i586-rpm.bin

Followed instructions on this page:

http://java.sun.com/j2se/1.5.0/install-linux.html

They did not work - so right clicked on rpm and "installed using yast"

Has installed into:

::

  /usr/java/jdk1.5.0_04

Added the following to ``.bashrc`` in my home directory:

Note: See these notes, :doc:`suse-path`, before setting up the path.

::

  # Setup Java environment variables
  JAVA_BINDIR=/usr/java/jdk1.5.0_04/jre/bin
  export JAVA_BINDIR
  JAVA_ROOT=/usr/java/jdk1.5.0_04/jre
  export JAVA_ROOT
  JAVA_HOME="/usr/java/jdk1.5.0_04"
  export JAVA_HOME
  JRE_HOME=$JAVA_ROOT
  export JRE_HOME

  # Setup Java path
  PATH="$PATH:$JAVA_BINDIR"
  PATH="$PATH:/usr/java/jdk1.5.0_04/bin"
  export PATH

Note: I do not know if this should be ``.bashrc`` or ``.profile``...

Had to set-up a symbolic link so that the new jre is used:

::

  ln -s /usr/java/jdk1.5.0_04/jre/bin/java /usr/local/bin/java

The default path looks in:

::

  /usr/bin/

where the java command is a symlink to some SuSE special set-up.

Note: I had to log-out/in before the new java command was used.



.. _`Installing Sun's Java on SUSE Linux`: http://en.opensuse.org/Java

