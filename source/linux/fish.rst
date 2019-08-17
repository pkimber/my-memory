Fish Shell
**********

.. highlight:: bash

Install
=======

::

  apt install fish

Make fish your default shell::

  chsh -s /usr/bin/fish

Configure
=========

Make sure the fish shell is active, and then run::

  fish_config

Commands
========

To merge history::

  history --merge

To set a universal variable (preserved across reboot)::

  set -U EDITOR vim

Environment Variables
=====================

Erase::

  set -e myvar

PATH
----

Add the following to ``~/.config/fish/config.fish``::

  set -x PATH $PATH ~/bin/

Startup
=======

Caps lock as *Ctrl*::

  xmodmap ~/.Xmodmap
