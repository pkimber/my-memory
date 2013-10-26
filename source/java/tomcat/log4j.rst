log4j
*****

Setup
=====

Copied this ``log4j.properties`` file to
``webapp/WEB-INF/classes/log4j.properties``:

::

  log4j.rootLogger = ERROR, R

  log4j.appender.R=org.apache.log4j.RollingFileAppender
  log4j.appender.R.File=/usr/share/tomcat/logs/my-name.log

  log4j.appender.R.MaxFileSize=10000KB
  log4j.appender.R.MaxBackupIndex=10

  log4j.appender.R.layout=org.apache.log4j.PatternLayout
  log4j.appender.R.layout.ConversionPattern=%p %t %c - %m%n

  log4j.logger.com.sample = DEBUG

...and we get logging in:

::

  /usr/share/tomcat/logs/my-name.log

Issues
======

Windows - Long File Names
-------------------------

Put my log4j.properties file into:

::

  C:\tools\Tomcat 5.5\common\classes\log4j.properties

My Tomcat was installed on my XP Workstation:

::

  C:\Tools\Tomcat 5.5\

Wanted the log file to appear in:

::

  C:\Tools\Tomcat 5.5\logs\

Had to use the short filename for the folder as the Tomcat folder included
spaces:

::

  log4j.appender.logfile.File=c:/Tools/TOMCAT~1.5/logs/springapp.log

Note: This also includes forward slashes for the filename
