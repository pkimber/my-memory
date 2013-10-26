log4net - Web Application
*************************

Configuration
=============

My web application is in:

::

  C:\Inetpub\wwwroot\Track\

Web.config
----------

The ``Web.config`` file is in the same folder and contains a section for the
logging configuration.

::

  ../../misc/howto/log4net/Web.config

A sample XML configuration can be seen in the :doc:`getting-started`.

The ``LogFileAppender`` is configured to log to:

::

  logs\\log-file.txt

The identity of the user running the web application will not have permission
to write to the ``logs`` folder.  To give the user permission, right click on
the ``logs`` folder, select *Properties*, *Security*, select the
``NETWORK SERVICE`` group and tick the *Allow*, *Write* check box.

For more information see `Re: logging stops under wwwroot`_.

Assembly
--------

Setup the assembly configuration in ``AssemblyInfo.cs``:

::

  [assembly: log4net.Config.XmlConfigurator(Watch=true)]

Remove ``Watch=true`` is you don't want the log4net system to watch the file
for runtime changes.


.. _`Re: logging stops under wwwroot`: http://mail-archives.apache.org/mod_mbox/logging-log4net-user/200604.mbox/%3C015301c663d3$eaa18120$6500a8c0@daemon64%3E
