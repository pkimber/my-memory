Linux
*****

Prerequisites
=============

Check to make sure the following are **not** installed::

  dpkg -l | grep python-virtualenv
  dpkg -l | grep python-pip
  dpkg -l | grep python-setuptools
  dpkg -l | grep virtualenvwrapper

easy_install
============

Download the ``setuptools`` ``egg`` file (make sure you have the version
matching the python you have installed)::

  wget http://pypi.python.org/packages/2.7/s/setuptools/setuptools-0.6c11-py2.7.egg
  wget http://pypi.python.org/packages/2.6/s/setuptools/setuptools-0.6c11-py2.6.egg
  wget http://pypi.python.org/packages/2.5/s/setuptools/setuptools-0.6c11-py2.5.egg

Run the installer as the root user as a shell script::

  sudo sh setuptools-0.6c11-py2.7.egg

pip
===

Note:

Apparently, if you ``easy_install virtualenv`` you will automatically get a
copy of ``pip`` (*but it didn't work for me*).

The new version of ``pip`` includes an installer script.  See `release
notes`_::

  sudo easy_install pip

virtualenv and virtualenvwrapper
================================

::

  sudo pip install virtualenvwrapper


.. _`release notes`: http://www.pip-installer.org/en/latest/news.html
