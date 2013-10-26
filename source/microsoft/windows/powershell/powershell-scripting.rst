Scripting
*********

Links
=====

- `Guide to getting started with Windows PowerShell`_.

Comment
=======

::

  # This is a comment

Dot Sourcing
============

If we have a script file, ``c:\\scripts\\test.ps1``, containing:

::

  $A = 5
  $B = 10
  $C = $A + $B

...and we want any variables used in the script to become global variables:

::

  . c:\scripts\test.ps1

We started the script ``test.ps1`` by *dot sourcing* it; that means that the
variable ``$C`` remains *alive* after the script ends.

Invoke
======

You can run a script in several different ways:

::

  Invoke-Expression c:\scripts\test.ps1
  & c:\scripts\test.ps1
  iex c:\scripts\test.ps1
  c:\scripts\test.ps1

Running Scripts Without Starting Windows PowerShell
---------------------------------------------------

To run ``c:\\scripts\\test.ps1`` from a Windows shortcut, enter the following
in the *Target* field of the shortcut properties:

::

  powershell.exe -noexit c:\scripts\test.ps1

- ``-noexit`` tells the PowerShell console to remain open after the script
  finishes.

- if the path to the script file contains blank spaces, you need to prefix the
  command with an ampersand and enclose the script path in single quote marks:

  ::

    powershell.exe -noexit &'c:\my scripts\test.ps1'

Issues
======

execution of scripts is disabled
--------------------------------

...by default, Windows PowerShell is not able to run scripts:

::

  File C:\batch\set-env\workstation.ps1 cannot be loaded because the execution of scripts is disabled on this system. Please see "get-help about_signing" for more details.

To solve this issue:

::

  set-executionpolicy remotesigned

The ``RemoteSigned`` execution policy allows unsigned scripts to execute from
the local computer.  Downloaded scripts still have to be signed in order to
run.


.. _`Guide to getting started with Windows PowerShell`: http://www.microsoft.com/technet/scriptcenter/topics/winpsh/manual/run.mspx

