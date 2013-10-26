Linux Setup
***********

Downloaded:

::

  apache-ant-1.6.5-bin.tar.gz

Extracted to:

::

  /usr/local/bin/apache-ant-1.6.5/

Added the following to ``.bashrc`` in my home directory:

::

  # Setup ANT
  ANT_HOME="/usr/local/bin/apache-ant-1.6.5"
  export ANT_HOME

  # Setup ANT path
  PATH="$PATH:$ANT_HOME/bin"
  export PATH

Looks like it is working perfectly!

History
=======

09/12/2005 16:54
----------------

Tried installing the SuSE version of ANT using YaST - but I get run errors.

These errors are probably because I have changed the Java settings.  See
:doc:`../linux` for more information.

NOTE: Make sure ant has not been installed using YaST (i.e. uninstall it).

