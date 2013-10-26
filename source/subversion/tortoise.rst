Tortoise
********

Authentication
==============

To clear authentication so you can re-enter your username and password:
*Right click on the folder*, *TortoiseSVN*, *Settings*, click the *Clear now*
button next to the *Subversion authentication data* label.

Diff
====

VIM
---

::

  C:\tools\Vim\vim71\gvim.exe -d %base %mine

WinMerge
--------

::

  C:\Program Files\WinMerge\WinMergeU.exe -e -x -ub -dl %bname -dr %yname %base %mine

Externals
=========

:doc:`externals`

Update to Revision
==================

*From TortoiseSVN help file...*

Update to Revision can occasionally be useful to see what your project looked
like at some earlier point in its history.  But in general, updating individual
files to an earlier revision is not a good idea as it leaves your working copy
in an inconsistent state.  If the file you are updating has changed name, you
may even find that the file just disappears from your working copy because no
file of that name existed in the earlier revision.

If you simply want a local copy of an old version of a file it is better to use
the Context Menu, *Save revision to...* command from the log dialog for that
file.

24/01/2006 12:11
----------------

*Discussion with Paul and Simon*

We would guess that *Update to Revision*, *HEAD Revision* is the same as a file
system delete followed by an update for the selected file(s).

