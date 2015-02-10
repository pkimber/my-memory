Java
****

Download
========

Download Java from Sun (I downloaded ``jdk-6u1-linux-i586.bin`` from the
`Java SE Downloads`_ page).

Install
=======

::

  cd /usr/local/bin/
  chmod +x jdk-6u1-linux-i586.bin
  ./jdk-6u1-linux-i586.bin

The JDK is installed to the ``jdk1.6.0_01`` subfolder:

::

  /usr/local/bin/jdk1.6.0_01

Setup
=====

To make it easy to change the default version of Java, create a symbolic link
to the Java folder:

::

  ln /usr/local/bin/jdk1.6.0_01 /usr/local/bin/java -s

Pointing the symbolic link at a different version of Java will automatically
update it for all users and applications which point ``JAVA_HOME`` at
``/usr/share/java``.

Environment
===========

For each user, who wants access to Java, add the following to their
``~/.bashrc`` file:

::

  JAVA_HOME="/usr/local/bin/java";export JAVA_HOME


.. _`Java SE Downloads`: http://java.sun.com/javase/downloads/index.jsp

