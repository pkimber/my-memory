Powershell
**********

Environment
===========

To set the environment variables:

::

  $env:JAVA_HOME = "C:\tools\jdk1.6.0"
  $env:path = "c:\tools\maven-2.0.6\bin;" + $env:path

Maven should now be able to ``clean`` and ``package`` a project.

