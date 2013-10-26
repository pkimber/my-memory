Usage
*****

.. highlight:: c++

Usage
=====

Add the following directory to the Visual Studio Project (*Project*,
*Properties*, *Linker*, *General*, *Additional Library Directories*):

::

  \src\log4cxx\build\release\shared

Add ``log4cxx.lib`` to the Visual Studio Project (*Project*, *Properties*,
*Linker*, *Input*, *Additional Dependencies*):

Add the following directory to the Visual Studio Project (*Project*,
*Properties*, *C/C++*, *General*, *Additional Include Directories*):

::

  \src\log4cxx\include

Copy the ``log4cxx.dll`` file into the project.  This file is in the following
folder:

::

  \src\log4cxx\build\release\shared\

Create a ``log4cxx.properties`` file in the same folder as the project file
(e.g. ``my-project.vcproj``).  This configuration will write the log file in
the same folder:

::

  log4j.rootLogger=debug, stdout, R

  log4j.appender.stdout=org.apache.log4j.ConsoleAppender
  log4j.appender.stdout.layout=org.apache.log4j.PatternLayout

  # Pattern to output the caller's file name and line number.
  log4j.appender.stdout.layout.ConversionPattern=%5p [%t] (%F:%L) - %m%n

  log4j.appender.R=org.apache.log4j.RollingFileAppender
  log4j.appender.R.File=logger.log

  log4j.appender.R.MaxFileSize=100KB

  # Keep one backup file
  log4j.appender.R.MaxBackupIndex=1

  log4j.appender.R.layout=org.apache.log4j.PatternLayout
  log4j.appender.R.layout.ConversionPattern=%p %t %c - %m%n

Source
======

Header
------

::

  #include <log4cxx/logger.h>

  class MyClass
  {
  private:
      log4cxx::LoggerPtr logger;

Source
------

::

  MyClass::MyClass()
      :   logger(log4cxx::Logger::getLogger("folder.MyClass"))
  {
      LOG4CXX_DEBUG(logger, "Constructor()");

