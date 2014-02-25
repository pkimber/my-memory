virtualenv
**********

Sample
======

In these sample sessions, ``env-name`` is the name of your environment:

Linux (default python)
----------------------

::

  virtualenv --no-site-packages env-name
  cd env-name
  source bin/activate

Linux (Python Version)
----------------------

If using Ubuntu Linux and a different version of python than the default::

  virtualenv -v -p python2.4 --no-site-packages env-name
  cd env-name
  source bin/activate

Windows
-------

::

  virtualenv --no-site-packages env-name
  cd env-name
  Scripts\activate.bat

Deactivate
==========

To leave the virtual environment::

  deactivate

Environment
===========

To **create** a virtual environment which ignores site packages::

  virtualenv --no-site-packages env-name

Python Version
==============

I managed to create a virtual environment for python 2.5 on my Ubuntu box
with the following command::

  /usr/bin/python2.5 /usr/local/bin/virtualenv --no-site-packages env-name

Note: I couldn't build the ``lxml`` library in this environment.  The
compiler couldn't find the c header files etc...  In the end I created a
Debian virtual machine with only python 2.5 installed.

Yolk
====

You can use *Yolk* to list the installed python packages on your system::

  easy_install yolk
  yolk -l
