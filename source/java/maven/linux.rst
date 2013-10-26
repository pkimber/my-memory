Linux
*****

Download and Install
====================


- Downloaded Maven from http://maven.apache.org/download.html:

  ::

    wget http://mirrors.ukfast.co.uk/sites/ftp.apache.org/maven/binaries/apache-maven-3.0.4-bin.tar.gz

- Extracted to ``~/bin/``

  ::

    cd ~/bin/
    tar xzf ~/Downloads/maven/apache-maven-3.0.4-bin.tar.gz

Setup
=====

Symbolic Link
-------------

To make it easy to change the default version of Maven, create a symbolic link
to the folder:

For my local install, I just created a link in the ``bin`` folder:

::

  /home/patrick/bin/apache-maven-3.0.2/bin/mvn .d ~/bin/
  ln -s /home/patrick/bin/apache-maven-3.0.4/bin/mvn .

On a server, you might like to do the following:

::

  ln /usr/local/bin/maven-2.0.4 /usr/local/bin/maven -s

Pointing the symbolic link at a different version of Maven will automatically
update it for all users and applications which have ``maven`` in their path.

Environment
-----------

Added the following to ``~/.bashrc`` in my home directory:

::

  PATH="$PATH:/usr/local/bin/maven/bin"

.. *History
   **Maven 1
   Added the following to <<<.bashrc>>> in my home directory:
   ---
   # Setup Maven
   MAVEN_HOME="/usr/local/bin/maven-1.0.2"
   export MAVEN_HOME
   PATH="$PATH:$MAVEN_HOME/bin"
   ---
