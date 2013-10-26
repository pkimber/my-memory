Getting Started
***************

Links
=====

- http://gitref.org/
- `Git - SVN Crash Course`_
- `the staging area`_
- `Setting up GIT to use a Subversion (SVN) style workflow`_
  ...also has useful information on configuring an empty repository...


Configuration
=============

Set user name and password:

::

  git config --global user.name "Patrick Kimber"
  git config --global user.email code@pkimber.net
  git config -l

Enable colours:

::

  git config --global color.diff auto
  git config --global color.status auto
  git config --global color.branch auto

View configuration:

::

  git config -l

Usage
=====

Initialise
----------

::

  git init
  git add .
  git commit

Branch
------

This article is a nice little intro to branching:
`Git Tutorial : Starting with git using just 10 commands`_.

Clone
-----

::

  git clone url
  git pull

diff
----

To get a ``diff`` of the stuff in the index:

::

  git diff --cached

To get a ``diff`` of the stuff not yet staged (in the index):

::

  git diff

Ignore
------

Edit the ``.gitignore`` file in the project folder e.g:

::

  # Can ignore specific files
  .DS_Store

  # Use wildcards as well
  *~
  *.swp

  # Can also ignore all directories and files in a directory.
  tmp/**/*

Log
---

::

  git log

GUI:

::

  gitk

Modify
------

Note: You have to **stage** a file before you can commit it.  You can do this
automatically by using the ``-a`` parameter on the ``commit`` command:

::

  git commit -a -m "Rename activation code."

...or... by adding the file to the staging error before committing:

::

  git add my-file.py
  git commit -m "Update colours."

Reset (revert)
--------------

Note: `'git revert' is not equivalent to 'svn revert'`_:

::

  git checkout filename

Status
------

::

  git status
  git status -s


.. _`'git revert' is not equivalent to 'svn revert'`: http://bryan-murdock.blogspot.com/2007/07/git-revert-is-not-equivalent-to-svn.html
.. _`Git - SVN Crash Course`: http://git.or.cz/course/svn.html
.. _`Git Tutorial : Starting with git using just 10 commands`: http://blog.xkoder.com/2008/08/13/git-tutorial-starting-with-git-using-just-10-commands/
.. _`Setting up GIT to use a Subversion (SVN) style workflow`: http://www.wausita.com/2010/08/setting-git-follow-subversion-workflow/
.. _`the staging area`: http://www.gitready.com/beginner/2009/01/18/the-staging-area.html
