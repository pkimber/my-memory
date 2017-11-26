Terminal
********

.. highlight:: bash

Reset
=====

`How to reset the terminal properties and preferences?`_::

  cp -a ~/.gconf/apps/gnome-terminal ~/repo/temp/terminal-settings.bak
  ~/.gconf/apps/gnome-terminal
  gconftool --recursive-unset /apps/gnome-terminal

*log out and back in again...*

Colour
======

256 colours
-----------

Is my terminal able to display 256 colours::

  wget http://www.vim.org/scripts/download_script.php?src_id=4568 -O colortest
  perl colortest -w

Colour Scheme
=============

Nova
----

From https://trevordmiller.com/projects/nova, *GNOME Terminal*...

To add Nova to vim and tmux:
https://bitbucket.org/pkimber/dot/commits/6a3f2eb48e9fb7739eef70f1d81b496227daa01e

Go to your Gnome terminal, *Edit*, *Preferences*, *Profiles*.  Check the name
of the profile and give it a name (if it doesn't have one) e.g. ``Patrick``.

Download
https://github.com/agarrharr/nova-gnome-terminal/blob/master/build/install.sh

::

  chmod +x install.sh

Then run the script passing the name of the profile as the parameter e.g::

  ./install.sh Patrick

Solarized
---------

To install::

  cd ~/repo/src/
  git clone git@github.com:Anthony25/gnome-terminal-colors-solarized.git
  cd gnome-terminal-colors-solarized
  ./install.sh


.. _`How to reset the terminal properties and preferences?`: http://askubuntu.com/questions/14487/how-to-reset-the-terminal-properties-and-preferences
