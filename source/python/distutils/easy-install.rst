Easy Install
************

Links
=====

- `Installing - Easy Install`_
- http://pip.openplans.org/
  pip is a replacement for easy_install.

Install
=======

Linux
-----

- :doc:`../install/linux`

Windows
-------

- Download and run ``setuptools-0.6c9.win32-py2.5.exe`` from
  http://pypi.python.org/pypi/setuptools:

  Note: Please check the un-install instructions if you are upgrading.

- Make sure the python, scripts folder (e.g. ``/python25/Scripts``) is on
  your path e.g.

  ::

    SET PATH=%MY_PYTHON%;%PATH%
    SET PATH=%MY_PYTHON%\Scripts;%PATH%

Usage
=====

General
-------

::

  \tools\Python25\Scripts\easy_install

Remove
------

Two variations on the command.  Not sure which one works... or is valid!

::

  sudo easy_install -mxN pip 0.8.2
  easy_install -m PackageName

Note: This will remove the installed dependencies.  Then you can delete the
``package_name.egg`` file that ``easy_install`` left behind.

Upgrade
-------

::

  easy_install --upgrade ipython

Script
======

For example, to install *Trac* from within a python script:

::

  from setuptools.command.easy_install import main
  main(['trac',])


.. _`Installing - Easy Install`: http://peak.telecommunity.com/DevCenter/EasyInstall#installing-easy-install
