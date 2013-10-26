Batch Files
***********

Links
=====

- :doc:`../windows/command-prompt`

Comment
=======

To comment a line:

::

  REM

or http://xset.tripod.com/tip3.htm

::

  ::

Continuation
============

To continue a line in a batch file, use the ``^`` character e.g:

::

  java -jar liquibase.jar --driver=com.mysql.jdbc.Driver ^
      --classpath=mysql-connector-java-5.0.6-bin.jar ^
      ...

Echo
====

Not 100% sure about this...

But I think if you have ``ECHO OFF`` in a batch file and want to print a blank
line:

::

  ECHO.

Environment
===========

The ``SETLOCAL`` command would have all environment changes only affecting
the batch file:

::

  SETLOCAL

File/Folder Name
================

`How can I make a batch file rename a file to the date or time?`_

::

  for /f "tokens=1-5 delims=/ " %%d in ("%date%") do rename "hope.txt" %%e-%%f-%%g.txt
  for /f "tokens=1-5 delims=:" %%d in ("%time%") do rename "hope.txt" %%d-%%e.txt

+--------------------------------------+-----------------------------------------------------------------------------------+
| ``for /f``                           | The ``for`` command and the ``/f`` switch.                                        |
+--------------------------------------+-----------------------------------------------------------------------------------+
| ``"tokens=1-5 delims=/ "``           | How many tokens the incoming data (in the first example, the date) will be broken |
|                                      | into; 1-5 is five different tokens.  Finally, ``delims`` is short for delimiters  |
|                                      | and is what is used to break up the date, in the first example the ``/``          |
|                                      | (forward slash) and a space (space before the quote).                             |
+--------------------------------------+-----------------------------------------------------------------------------------+
| ``%%d``                              | The beginning character used for the token.  Since there are 5 tokens in these    |
|                                      | examples it would be d,e,f,g, and h.                                              |
+--------------------------------------+-----------------------------------------------------------------------------------+
| ``in ("%date%")``                    | The data being used, in the first example, the ``%date%`` is the current date     |
|                                      | of the computer.                                                                  |
+--------------------------------------+-----------------------------------------------------------------------------------+
| ``do``                               | What the ``for`` command will do.                                                 |
|                                      | The rename command can be substituted for anything else.                          |
+--------------------------------------+-----------------------------------------------------------------------------------+
| ``rename "hope.txt" %%e-%%f-%%g.txt``| rename the file ``"hope.txt"`` to the tokens e,f, and g with a ``.txt`` file      |
|                                      | extension. These examples also have a ``-`` (hyphen) in-between each token to     |
|                                      | separate the month, day, and year in the file name.                               |
+--------------------------------------+-----------------------------------------------------------------------------------+

Folder
======

Batch Folder
------------

`Get Directory Path of an executing Batch file`_

The folder containing the batch file:

::

  %~dp0

The drive containing the batch file:

::

  %~d0

Change Drive and Folder
-----------------------

Use the "``/D``" switch to change current drive in addition to changing current
directory for a drive (Note: XP and above):

::

  CD [/D] [drive:][path]

Save and Restore Folder
-----------------------

`Capturing the current directory from a batch file`_

::

  pushd .
  ...do some stuff...
  popd

...another technique:

::

  set OLDDIR=%CD%
  ...do some stuff...
  chdir /d %OLDDIR%

Looping
=======

For sample code showing a ``for`` loop see
:doc:`../sql-server/transact-sql`

Parameters
==========

If you expect your user to pass more than one parameter to the batch file,
then (I think) this will do the job:

::

  command %*

...if not, this works!

::

  command %1 %2 %3 %4 %5 %6 %7 %8 %9

Windows Shortcut
================

To run a batch file from a Windows shortcut and keep the command window open.
Add the following to the *Target* section of the shortcut properties:

::

  C:\WINDOWS\system32\cmd.exe /k C:\development\tools\batch\maven2+j2sdk1.4.2_09.bat



.. _`How can I make a batch file rename a file to the date or time?`: http://www.computerhope.com/issues/ch000987.htm
.. _`Get Directory Path of an executing Batch file`: http://weblogs.asp.net/whaggard/archive/2005/01/28/get-directory-path-of-an-executing-batch-file.aspx
.. _`Capturing the current directory from a batch file`: http://blogs.msdn.com/oldnewthing/archive/2005/01/28/362565.aspx
