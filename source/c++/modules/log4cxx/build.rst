Build
*****

.. highlight:: c++

ant
===

Downloaded ``apache-ant-1.6.5-bin.zip`` from
http://ant.apache.org/bindownload.cgi.

Extracted to:

::

  C:\tools\apache-ant-1.6.5

Created a batch file with the following contents:

::

  set ANT_HOME=C:\tools\apache-ant-1.6.5
  set PATH=%PATH%;%ANT_HOME%\bin
  set JAVA_HOME=C:\tools\jdk1.5
  call "C:\Program Files\Microsoft Visual Studio .NET 2003\Common7\Tools\vsvars32.bat"

Created a shortcut to this batch file:

::

  %SystemRoot%\system32\cmd.exe /k C:\development\tools\batch\log4cxx-build.bat

Checkout log4cxx
================

Checked out log4cxx from the Subversion repository:

::

  svn co http://svn.apache.org/repos/asf/logging/log4cxx/trunk log4cxx

I checked out to:

::

  C:\src\log4cxx\

Dependencies
============

Windows
-------

Downloaded ``cpptasks-1.0b4.zip`` from http://ant-contrib.sourceforge.net/
and extracted ``cpptasks.jar`` to:

::

  C:\tools\apache-ant-1.6.5\lib

Build log4cxx
=============

Build the library (the ``-Ddebug=false`` can be removed if you want to build
debug versions):

::

  ant -Ddebug=false

Does not pass all the unit tests... but it has produced some ``dll`` files.
The problem might be because ``sed`` is not on the path:
http://article.gmane.org/gmane.comp.apache.logging.log4cxx.user/644/match=transformer+cpp.
