Install
*******

Download
========

Download ``james-binary-2.3.1.zip`` from http://james.apache.org/download.cgi.

Install
=======

Extract the archive.  I extracted to:

::

  C:\tools\james-2.3.1\

Startup
=======

To start the stand-alone server:

::

  cd \tools\james-2.3.1\
  bin\run.bat

Test
====

Sample code, :doc:`../../../python/email/email`

Windows Service
===============

To install Apache James as a service:

- Open a command prompt...

  Note: On Windows Vista, *Run as administrator...*...

- Install the service:

  ::

    cd \tools\james-2.3.1\bin\
    Wrapper.exe -i ..\conf\wrapper.conf

- Run the Windows *Services* application and start *James Mail Server*...

  To remove the Windows service:

  ::

    cd \tools\james-2.3.1\bin\
    Wrapper.exe -r ..\conf\wrapper.conf
