virtualenvwrapper
*****************

**Note**:

- This is Linux only!  For Windows see ``envdotpy`` (link below).
- In these examples, I am using the folder ``~/.virtualenvs`` for my
  development environment.

Install
=======

Ubuntu
------

:doc:`../install/linux`

Setup
=====

Create a folder to store your virtual environments::

  mkdir ~/.virtualenvs

Edit ``.bashrc`` and add the following::

  export WORKON_HOME=$HOME/.virtualenvs
  source /usr/local/bin/virtualenvwrapper.sh

To always use ``virtualenvwrapper`` with python 3, add the following option to
``~/.bashrc``::

  export VIRTUALENV_PYTHON=/usr/bin/python3

Source the ``~/.bashrc``::

  source ~/.bashrc

Run the ``workon`` command to list the virtual environments (will be empty for
now).

Test
====

Create a new virtual environment::

  mkvirtualenv temp

To use python3::

  mkvirtualenv --python=/usr/bin/python3 temp

To use python2::

  mkvirtualenv -p /usr/bin/python temp

Run the ``workon`` command to list the virtual environments::

  workon

Commands
========

:doc:`virtualenvwrapper-commands`

Hook Scripts
============

Using the above ``temp`` environment as an example...

postactivate
------------

Edit the ``postactivate`` script for the virtual environment (in this case
``temp``)::

  gvim ~/.virtualenvs/temp/bin/postactivate

Here is a sample script setting a couple of environment variables::

  PATH=~/env/patkimber:$PATH
  JAVA_HOME=~/temp/pat_java
  export JAVA_HOME

Activate the environment::

  workon temp
