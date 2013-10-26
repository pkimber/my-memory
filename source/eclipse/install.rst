Install
*******

Windows
=======

Extract Eclipse:

::

  eclipse-SDK-3.1RC3-win32.zip

I extracted to:

::

  c:\tools\eclipse\

Extract a JDK or JRE.  I installed:

::

  jdk-1_5_0_03-windows-i586-p.exe

to:

::

  C:\Tools\jdk1.5.0_03\

Create a shortcut for eclipse and specify the JDK/JRE you want to use:

::

  C:\Tools\Eclipse\eclipse.exe -vm C:\Tools\jdk1.5.0_03\jre\bin\javaw

**Note**: If you prefer, you can specify the location of the JDK/JRE
:doc:`tips`.

Linux
=====

- Install the JDK:

  ::

    sudo apt-get install sun-java6-jdk

- Download the Eclipse *Eclipse IDE for Java Developers*:

  ::

    eclipse-java-helios-SR1-linux-gtk-x86_64.tar.gz

- Extract the archive to a convenient location:

  ::

    cd ~/opt/
    tar xzf ~/Downloads/eclipse/eclipse-java-helios-SR1-linux-gtk-x86_64.tar.gz

- To run, I just used the following command:

  ::
  
    /usr/local/eclipse/eclipse
    # or
    ~/opt/eclipse/eclipse

Did not work...
===============

Downloaded CDT, ``org.eclipse.cdt-3.0.2-linux.x86.tar.gz``.

::

  cd /usr/local/
  tar xzf /home/patrick/download/eclipse/org.eclipse.cdt-3.0.2-linux.x86.tar.gz
