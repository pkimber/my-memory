Remote Desktop
**************

Clear session
=============

::

  mstsc /console /v:app1.server
  mstsc /admin /v:app1.server

Run one of the *User* commands below to find the session ID (you need to be an
administrator on the target machine):

::

  logoff <sessionId> /server:<serverName>

Client
======

::

  \\tsclient\c\

Recover
=======

If your session freezes (or never gets started), use *Control*, *Alt*, *Delete*
to escape.  The command will run on your local workstation and will not *upset*
the remote machine.

Switch Session
==============

`How To Switch Between Remote Desktop Sessions on Win2k3`_

- *Start*, *All Programs*, *Administrative Tools*, *Terminal Services Manager*.
- Right click on the session you want to connect to... and select *Connect*.

**Note**: This command will disconnect the user for this session...

Users
=====

User sessions showing idle time etc (you need to be an administrator on the
target machine):

::

  quser /server:<serverName>

List user sessions (you need to be an administrator on the target machine):

::

  qwinsta /server:<serverName>


.. _`How To Switch Between Remote Desktop Sessions on Win2k3`: http://www.allbacktomine.com/blog/2008/07/18/HowToSwitchBetweenRemoteDesktopSessionsOnWin2k3.aspx

