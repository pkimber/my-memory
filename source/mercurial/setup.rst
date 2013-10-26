Getting Started
***************

- :doc:`install`
- Setup (this document).
- :doc:`usage`

Preferences
===========

Create a configuration file in your home folder:

- On my Windows workstation the file is:

  ::

    C:\Users\patrick\Mercurial.ini

- Linux

  ::

    vim ~/.hgrc

The file will specify your user name, editor and diff tool:

::

  [ui]
  editor = vim
  username = Phil Brown <pb@mail.com>
  merge = vimdiff

Note:

- For merge settings see `MergeProgram on the WIKI`_.
- I tried to use UltraEdit as my editor, but we need an editor which will make
  the ``hg`` process wait until the comment has been created.

URL
---

Note: This setting is for the repository ``.hg/hgrc`` file.

::

  [paths]
  default = http://toybox/hg/core
  default-push = http://toybox/hg/core

Verify
======

To make sure Mercurial is installed correctly, open a new command prompt and run:

::

  c:\>hg
  Mercurial Distributed SCM

...and to confirm your preferences (doesn't seem to work on Linux):

::

  c:\>hg showconfig
  extensions.hgext.win32text=
  ui.editor=vim
  ui.username=Phil Brown <pb@mail.com>

Usage
=====

See :doc:`usage`...


.. _`MergeProgram on the WIKI`: http://www.selenic.com/mercurial/wiki/index.cgi/MergeProgram
