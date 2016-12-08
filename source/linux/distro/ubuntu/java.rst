Java
****

.. highlight:: bash

Install
=======

`Install Oracle Java 7 in Ubuntu`_::

  sudo add-apt-repository ppa:webupd8team/java
  sudo apt update
  # java 7
  sudo apt install oracle-java7-installer
  # java 8
  sudo apt install oracle-java8-installer

Check the version of Java::

  java -version
  javac -version

If for some reason, the Java version in use is not 1.7.x, you can try to run
the following command::

  sudo update-java-alternatives -s java-7-oracle

To automatically set up the Java 7 environment variables, you can install the
following package::

  sudo apt install oracle-java7-set-default
  # or
  sudo apt install oracle-java8-set-default

If you don't want to use Oracle Java (JDK) 7 anymore and want to go back to
OpenJDK, all you have to do is remove the Oracle JDK7 Installer and the
previous Java (OpenJDK, etc.) version will be used::

  sudo apt remove oracle-java7-installer

Configuration
=============

To view the current configuration::

  update-java-alternatives -l

...alternatively, to be asked::

  sudo update-alternatives --config java

JAVA_HOME
=========

`How to set JAVA_HOME environment variable in Ubuntu`_:

To set ``JAVA_HOME``.  Edit ``~/.bashrc`` and add the following line::

  export JAVA_HOME=/usr/lib/jvm/java-6-sun

It took me a long time to get this working.  I think the standard Java is
called through a symbolic link and JAVA_HOME will not work when pointed to a
symbolic link.


.. _`How to install java jdk on ubuntu (linux)`: http://www.mkyong.com/java/how-to-install-java-jdk-on-ubuntu-linux/
.. _`How to set JAVA_HOME environment variable in Ubuntu`: http://www.zimbio.com/the+ubuntu+guy/articles/82/How+set+JAVA_HOME+environment+variable+Ubuntu
.. _`HOWTO Install Sun’s JAVA on Ubuntu Lucid Lynx (10.04)`: http://beeznest.wordpress.com/2010/04/23/howto-install-suns-java-on-ubuntu-lucid-lynx-10-04/
.. _`Install Oracle Java 7 in Ubuntu`: http://www.webupd8.org/2012/01/install-oracle-java-jdk-7-in-ubuntu-via.html
.. _`Install Sun Java 6 JRE and JDK from .deb packages`: http://blog.flexion.org/2012/01/16/install-sun-java-6-jre-jdk-from-deb-packages/
