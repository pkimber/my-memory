Terminal
********

.. highlight:: bash

Reset
=====

`How to reset the terminal properties and preferences?`_

::

  cp -a ~/.gconf/apps/gnome-terminal ~/repo/temp/terminal-settings.bak
  ~/.gconf/apps/gnome-terminal
  gconftool --recursive-unset /apps/gnome-terminal

*log out and back in again...*

Colour
======

256 colours
-----------

Is my terminal able to display 256 colours:

::

  wget http://www.vim.org/scripts/download_script.php?src_id=4568 -O colortest
  perl colortest -w

Scheme
------

Solarized

**This colour scheme really isn't comprehensive enough - some text is hidden**:

To install:

::

  cd ~/repo/src/
  git clone https://github.com/sigurdga/gnome-terminal-colors-solarized.git
  cd gnome-terminal-colors-solarized
  ./install.sh


.. _`How to reset the terminal properties and preferences?`: http://askubuntu.com/questions/14487/how-to-reset-the-terminal-properties-and-preferences
