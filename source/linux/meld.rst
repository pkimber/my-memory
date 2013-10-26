meld
****

Links
=====

- http://meld.sourceforge.net/
  Meld : Diff and merge tool.

Issues
======

Trying to run meld from the command line:

::

  No module named pygtk
  Meld requires pygtk 2.8.0 or higher.

I was trying to run meld from within a python virtual environment.  To solve
the problem, deactivate the virtual environment or open a new console.

Subversion
==========

::

  svn diff --diff-cmd meld templates/search.html

