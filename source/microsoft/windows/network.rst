Networking
**********

**Note**, If trying to connect to a Windows 7 computer, then make sure you have
a password for your account on the other computers.  The ``netplwiz`` command
will allow you to automatically log a user (with a password) onto the Windows 7
computer.

Links
=====

- `Getting Access is Denied when accessing Windows 7 share from Windows XP`_
  *This is an excellent article - managed to get Windows XP connecting to
  Windows 7 by following these instructions*...

Configuration
=============

To view the network configuration (including DNS):

::

  ipconfig /all

MAC
---

...your PC's MAC address...

::

  GETMAC

NET
---

- NET USE

  The ``NET USE`` command instantly displays a summary of anyone on the
  network using your computer's resources as well as those resources you're
  using on other network computers.

- NET SHARE

  ``NET SHARE`` ...lists which folders or drives on your PC are available for
  sharing on the network:

- NET VIEW

  The ``NET VIEW`` command's output lists each computer on the network.

hosts
=====

The ``hosts`` file on Windows is here:

::

  C:\WINDOWS\system32\drivers\etc\hosts

**Note**: On Vista, Start *Notepad* using the "*Run as administrator*" option.

Mapping
=======

To map a drive (where ``x:`` is the drive letter you want to assign to the
shared resource):

::

  net use x: \\computer name\share name,

To disconnect a mapped drive:

::

  net use x: /delete

Port Status
===========

netstat
-------

To check the status of port 8080:

::

  netstat -an | find "8080"

Fport
-----

Fport_ Identify unknown open ports and their associated applications:

::

  Fport.exe /p | more

Note: I couldn't get this to work on Vista... kept saying
``You must have administrator privileges to run fport - exiting...``

TCPView
-------

(Could try Microsoft, TCPView for Windows (:doc:`../links`) but I
didn't like it).

Active Ports
------------

RAM (4th Screen) and Simon (Jigsaw) recommend: `Active Ports`_.

Note: This app crashes for me on Vista, saying ``Access is denied``,
``Active Ports - OpenPhysicalMemory error! (5)``...

telnet
======

See Windows Vista - Tips, telnet, :doc:`tips-vista`.


.. _`Active Ports`: http://www.devicelock.com/freeware.html
.. _`Getting Access is Denied when accessing Windows 7 share from Windows XP`: http://answers.microsoft.com/en-us/windows/forum/windows_7-security/getting-access-is-denied-when-accessing-windows-7/23369f35-bc45-4147-9c3e-74a47d530757
.. _Fport: http://www.foundstone.com/us/resources/proddesc/fport.htm
