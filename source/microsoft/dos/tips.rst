Tips
****

Colour
======

To set the console colour::

  COLOR 1F

The above command sets the background color to 1 (blue) and text color to ``F``
(bright white).

There are 16 color combinations:

==  ===================
0   Black
1   Blue
2   Green
3   Aqua
4   Red
5   Purple
6   Yellow
7   White
8   Gray
9   Light blue
A   Light green
B   Light aqua
C   Light red
D   Light purple
E   Light yellow
F   Bright white
==  ===================

File Associations
=================

To see the file associations for text files::

  >assoc .txt
  .txt=UltraEdit.txt

...take the output from the ``assoc`` command to see how the file is opened::

  ftype UltraEdit.txt
  UltraEdit.txt="C:\Program Files\IDM Computer Solutions\UltraEdit-32\uedit32.exe" "%1"

To associate an extension with a file type, first create the file type::

  FTYPE LOGFILE=%SYSTEMROOT%\SYSTEM32\NOTEPAD.EXE %1

...then associate it with an extension::

  ASSOC .LOG=LOGFILE

MODE
====

...set the number of columns and rows on the console::

  MODE CON COLS=90 LINES=30

Note: setting the ``LINES`` value also affects the command prompt window's
ability to scroll back through commands.

...to see the current settings::

  MODE CON

NET
===

:doc:`../windows/network`

ROBOCOPY
========

`DOS lives! Secrets of the Windows command prompt - Copying whole directories`_

ROBOCOPY... comes standard with Vista and is available for download as part of
the `Windows Server 2003 Resource Kit`_

This command directs ``ROBOCOPY`` to duplicate, or mirror, the contents of the
current directory (abbreviated by the dot) - and all files and subdirectories
in that directory - to the directory ``DAN`` on drive E.  All files will be
copied.  If the operation stops - it will hang if a file is busy and try it
back 1 million times unless you intervene - you can resume it at any time
simply by reissuing the ``ROBOCOPY`` command, which will pick up where it left
off::

  ROBOCOPY . E:\DAN /MIR

To backup photos on a friends machine::

  ROBOCOPY "C:\My Pictures" H:\backup-photos\ /E /W:20 /R:15 /TEE /LOG:C:\bin\robolog.txt

Note:

- The ``/MIR`` option (see above), is equivalent to ``/E /PURGE``
  i.e. it will remove files from the destination if they are deleted from the
  source.  I don't want this to happen, so I am just using the ``/E`` option
  (copy all subdirectories even empty ones).

- ``/R`` the number of times to retry.
- ``/W`` waits for the specified number of seconds between re-tries.
- ``/TEE`` show output on the console as well as to the log file.

START
=====

Start a specified program or command in a separate window:

- START_
- `DOS start command`_,
- `The START command`_

::

  start "my env" /d %home%\env /I /LOW dir

In this example:

============  =============================================================
``"my env"``  Title of the new window.
``/d``        Starting directory for the new window.
``/I``        Ignore any changes to the current environment.
``/LOW``      Start application in the IDLE priority class.
``dir``       The command to run in the new window.
============  =============================================================

SUBST
=====

Associates a path with a drive letter:

::

  subst e: c:\repository\email_gateway


.. _`DOS lives! Secrets of the Windows command prompt - Copying whole directories`: http://www.computerworld.com.au/index.php/id;987318737;pp;5;fp;2;fpid;2
.. _`Windows Server 2003 Resource Kit`: http://www.microsoft.com/downloads/details.aspx?familyid=9d467a69-57ff-4ae7-96ee-b18c4790cffd&displaylang=en
.. _START: http://www.ss64.com/nt/start.html
.. _`DOS start command`: http://www.computerhope.com/starthlp.htm
.. _`The START command`: http://www.robvanderwoude.com/ntstart.php
