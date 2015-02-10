Issues
******

Channel 4 4OD
=============

Program stopping after adverts:

::

  sudo apt-get install hal

Flash
=====

Wasn't working in Firefox:

::

  sudo apt-get remove --purge flashplugin-nonfree
  sudo apt-get remove --purge flashplugin-installer
  sudo apt-get install flashplugin-nonfree

Re-start Firefox.

Language
========

Soon after installing Gnome, my language switch to Chinese (or Japanese or
something I couldn't read):

Edit ``~/.pam_environment`` file and chang these two variables:

::

  LANGUAGE="en_GB:en"
  LANG="en_GB.UTF-8"

Packages - you have held broken packages
========================================

Trying to install Java plugin using the normal Ubuntu update process:

::

  E:Unable to install you have held broken packages.

To solve the problem, I followed these instructions:
`Ubuntu yelp package Questions Question #100167`_

::

  sudo dpkg --configure -a
  sudo apt-get -f install
  sudo apt-get --fix-missing install
  sudo apt-get clean
  sudo apt-get update
  sudo apt-get dist-upgrade
  sudo apt-get clean
  sudo apt-get autoremove


.. _`Ubuntu yelp package Questions Question #100167`: https://answers.launchpad.net/ubuntu/+source/yelp/+question/100167
