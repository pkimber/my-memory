IIS - Issues
************

Application Pool
================

::

  From: Tony
  Sent: 13 May 2008 12:00
  Subject: RE: ? going out today

  I think I sent this round before but it's pretty easy:

  Remote Desktop to the server that is down (WEB1.server or WEB2.server), open
  IIS Manager, expand "Application Pools".

  The "OurAppPool" may have a red mark next to it if it has been disabled (if
  IIS Manager was already open you may need to right-click Application Pools and
  refresh).  Right-click OurAppPool and click "Start"

  If it gets completely stuck then open a command prompt and type IISRESET
  (that will restart IIS completely).

Unexpected Error 0x8ffe2740 Occurred
====================================

http://support.microsoft.com/?id=816944

Error Message When You Try to Start a Web Site:

::

  Unexpected Error 0x8ffe2740 Occurred

Cause
-----

This behavior may occur if a port conflict exists on the system.  By default,
IIS uses port 80 for HTTP communication.  If an application other than IIS is
running and is using port 80 on the same IP address, you may receive the error
message when you try to use IIS Manager to start the Web site.

Diagnostics
-----------

To identify other applications using port 80, try Fport,
:doc:`../tools/software`.

Solution
--------

Close down Skype!

To stop this happening again, see the notes in Apache 2 - Issues, could not
bind to address, :doc:`../apache/http/issues`.


.. _`IIS, Application Pools`: ../../companies/j1/iis.html
