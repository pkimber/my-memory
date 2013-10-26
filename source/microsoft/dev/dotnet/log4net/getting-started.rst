log4net - Getting Started
*************************

Note
====

Probably better to use the Microsoft - Logging Application Block:
:doc:`../microsoft/patterns-and-practices`.

Download
========

Download ``incubating-log4net-1.2.10.zip`` from
http://logging.apache.org/log4net/.

Install
=======

The zip file contains different DLL's for each version of .NET.  Extract the
appropriate ``log4net.dll`` e.g:

::

  bin\net\1.1\release\
  bin\net\2.0\release\

Build
=====

The ``log4net.dll`` file must be added as a reference to the project.

Note: If you make a copy of ``log4net.dll``, don't forget to copy
``log4net.xml`` as well.

An MSBuild example: :doc:`../microsoft/msbuild`.

Configuration
=============

Assembly
--------

In ``AssemblyInfo.cs``, tell log4net to get its configuration from the
application ``.config`` file:

::

  [assembly: log4net.Config.XmlConfigurator(Watch=true)]

Remove ``Watch=true`` is you don't want the log4net system to watch the file
for runtime changes.

config
------

The application configuration file for ``ConsoleApp.exe`` is found in the
application root folder (i.e. the directory containing ``ConsoleApp.exe``) and
will be called ``ConsoleApp.exe.config``.

Note:

- This is different for web applications: :doc:`web-app`.
- The ``.config`` file must be copied to the same folder as the ``exe`` or
  ``dll``.

  For notes on how to do this... see Visual Studio - Tips - Build Events,
  :doc:`../microsoft/visual-studio-tips`.

  A sample sample.exe.config file:

  ::

    ../../misc/howto/log4net/sample.exe.config

  ...another (more complicated sample):

  ::

    ../../misc/howto/log4net/ApplicationName.exe.config

  To change the log level for a specific class:

::

  <logger name="HelloWorld">
    <level value="ALL" />
    <appender-ref ref="RollingLogFileAppender" />
  </logger>

Sample Code
===========

A sample project: https://weezy/svn/development/sample/c-sharp/sample-log4net

To add logging to your class (not sure which of the next two is best):

::

  public class HelloWorld
  {
      private static readonly log4net.ILog logger
          = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

      public static void Main()
      {
          if (logger.IsErrorEnabled)
            logger.Info("Application started");
      }
  }

or:

::

  public class HelloWorld
  {
      private static log4net.ILog logger;

      static HelloWorld()
      {
          logger = log4net.LogManager.GetLogger(typeof(HelloWorld));
      }

Logging levels
==============

=========  =========================
**Level**  **Method**
=========  =========================
``OFF``
``FATAL``  ``void Fatal();``
``ERROR``  ``void Error();``
``WARN``   ``void Warn();``
``INFO``   ``void Info();``
``DEBUG``  ``void Debug();``
``ALL``
=========  =========================
