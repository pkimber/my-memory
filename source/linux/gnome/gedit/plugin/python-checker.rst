Python Checker
**************

Install
=======

Prerequisites
-------------

::

  sudo pip install --upgrade pyflakes
  sudo pip install --upgrade pep8

Plug-in
-------

::

  cd ~/src/
  svn checkout http://geditchecker.googlecode.com/svn/trunk/ geditchecker

  mkdir ~/.gnome2/gedit/plugins/
  cp -r ~/src/geditchecker/pythonchecker/* ~/.gnome2/gedit/plugins/

The commands above will create the following files:

::

  $ ll ~/.gnome2/gedit/plugins/
  drwxrwx--- ... PythonChecker
  -rw-rw---- ... pythonchecker.gedit-plugin

Configure
=========

- Edit the following file:

  ::

    ~/.gnome2/gedit/plugins/PythonChecker/__init__.py

  Change:

  ::

    self.commands = {'pep8': 'pep8.py %s --repeat --ignore=E501',

  ...to:

  ::

    self.commands = {'pep8': 'pep8 %s --repeat --ignore=E501',

- Tick the *PythonChecker* box in *Edit*, *Preferences*, *Plugins*.
- Run ``gedit`` from the command line so you can see output from the plugin.

Usage
=====

- *View*, *Bottom Pane*
- Click the *PythonChecker* tab.
- The check will be performed when the file is saved.

