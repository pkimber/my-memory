Install
*******

**Note**:

Probably best to install python 2.5 until there is a python 2.6 installer for
:doc:`../distutils/easy-install`.

This describes how to install python for an workstation where we want to use
:doc:`../virtualenv/virtualenv` to manage our environment...

Install
=======

Download and install ``python-2.5.4.msi`` from the python web site.  The standard installer does
not add python to the ``PATH`` (which is what we want).

Install :doc:`../distutils/easy-install`.

**Note**: Do **NOT** add the python folders to the ``PATH``.

Install :doc:`../virtualenv/virtualenv`:

::

  \tools\Python25\Scripts\easy_install.exe virtualenv

For Windows, copy ``env.py`` to a folder on the path.  For Linux, probably best to set-up
:doc:`../virtualenv/virtualenvwrapper`.

**Note**: Make sure to follow the *Configuration* instructions in the
:doc:`../virtualenv/env` notes.

To set-up a nice virtual environment, follow the *Python*, *Environment* instructions in *Common
Commands*...
