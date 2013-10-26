SourceSafe
**********

Differences
===========

It is not easy to see which files are not version controlled.  The *Show
differences...* command can take a long time to run.  In some cases it would be
quicker to *Get Latest Version...* into a new folder.

Install
=======

Run ``NETSETUP.EXE`` from ``T:``

::

  \\myserver\Sourcesafe\NETSETUP.EXE

Setup
=====

*File*, *Open SourceSafe Database*

The repository is on:

::

  \\server\sourcesafe\

My password had to be set-up by *N* from the SourceSafe administration program.

Use
===

Navigate to the section from where you want to get the files:

::

  ../images/sourcesafe-explorer.gif

Right click on the folder, *Get Latest Version*, *Browse* to the folder on your
local hard disk where you want to put the files.  Make sure you tick
*Recursive*, then press *OK* to get the files from the SourceSafe repository.

Note: *Check Out* is completely different to the equivalent in Subversion.
Check out locks the file in the repository so no one else can edit it.

