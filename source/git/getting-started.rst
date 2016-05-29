Getting Started
***************

.. highlight:: bash

Links
=====

- http://gitref.org/
- `Git - SVN Crash Course`_
- `the staging area`_
- `Setting up GIT to use a Subversion (SVN) style workflow`_
  ...also has useful information on configuring an empty repository...

Configuration
=============

Set user name and password::

  git config --global user.name "Patrick Kimber"
  git config --global user.email code@pkimber.net
  git config -l

Enable colours::

  git config --global color.diff auto
  git config --global color.status auto
  git config --global color.branch auto

Set the default editor (to ``vim``)::

  git config --global core.editor vim

View configuration::

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

To get a ``diff`` of the stuff in the index::

  git diff --cached

To get a ``diff`` of the stuff not yet staged (in the index)::

  git diff

Ignore
------

Edit the ``.gitignore`` file in the project folder e.g::

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
  # list file names
  git log --name-status

GUI::

  gitk

Modify
------

.. note:: You have to **stage** a file before you can commit it.  You can do
          this automatically by using the ``-a`` parameter on the ``commit``
          command.

::

  git commit -a -m "Rename activation code."

...or... by adding the file to the staging error before committing::

  git add my-file.py
  git commit -m "Update colours."

If you enter an incorrect commit message, you can amend the message using::

  git commit --amend

Reset (revert)
--------------

Note: `'git revert' is not equivalent to 'svn revert'`_::

  git checkout filename

To actually remove a commit (from `Delete commits from a branch in Git`_):

.. warning:: ``git reset --hard`` WILL DELETE YOUR WORKING DIRECTORY CHANGES.
             Be sure to stash any local changes you want to keep before running
             this command.

Assuming you are sitting on that commit, then this command will wack it::

  git reset --hard HEAD~1

The ``HEAD~1`` means the commit before head.

Or, you could look at the output of ``git log``, find the commit id of the
commit you want to back up to, and then do this::

  git reset --hard <sha1-commit-id>

If you already pushed it, you will need to do a force push to get rid of it::

  git push origin HEAD --force

Stash
-----

::

  git stash
  git stash list
  git stash apply

Status
------

::

  git status
  git status -s


.. _`'git revert' is not equivalent to 'svn revert'`: http://bryan-murdock.blogspot.com/2007/07/git-revert-is-not-equivalent-to-svn.html
.. _`Delete commits from a branch in Git`: http://stackoverflow.com/questions/1338728/delete-commits-from-a-branch-in-git
.. _`Git - SVN Crash Course`: http://git.or.cz/course/svn.html
.. _`Git Tutorial : Starting with git using just 10 commands`: http://blog.xkoder.com/2008/08/13/git-tutorial-starting-with-git-using-just-10-commands/
.. _`Setting up GIT to use a Subversion (SVN) style workflow`: http://www.wausita.com/2010/08/setting-git-follow-subversion-workflow/
.. _`the staging area`: http://www.gitready.com/beginner/2009/01/18/the-staging-area.html
