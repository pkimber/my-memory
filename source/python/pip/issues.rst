Issues
******

.. highlight:: bash

DistributionNotFound
====================

This is a weird error and might be related to the fact that I downloaded and
installed :doc:`../distutils/setuptools`::

  $ pip
  Traceback (most recent call last):
    File "/usr/local/bin/pip", line 5, in <module>
      from pkg_resources import load_entry_point
    File "/usr/lib/python2.6/dist-packages/pkg_resources.py", line 2671, in <module>
      working_set.require(__requires__)
    File "/usr/lib/python2.6/dist-packages/pkg_resources.py", line 654, in require
      needed = self.resolve(parse_requirements(requirements))
    File "/usr/lib/python2.6/dist-packages/pkg_resources.py", line 552, in resolve
      raise DistributionNotFound(req)
  pkg_resources.DistributionNotFound: pip==0.8.2

If I run ``sudo pip``, then the command works.  We think this might be a
permissions related as we have changed our ``umask`` settings.

Solution
--------

The following files in ``/usr/local/lib/python2.6/dist-packages/`` were
installed with incorrect permissions::

  easy-install.pth
  pip-0.8.2-py2.6.egg
  setuptools-0.6c11-py2.6.egg
  setuptools.pth
  virtualenv-1.5.1-py2.6.egg-info
  virtualenv.py
  virtualenv.pyc
  virtualenv_support
  virtualenvwrapper
  virtualenvwrapper-2.6.3-py2.6.egg-info
  virtualenvwrapper-2.6.3-py2.6-nspkg.pth

This is because we changed the default ``UMASK`` for our workstations (for
details see :doc:`../../linux/security/sample/office`).

To solve the problem:

I removed the files above and the ``bin`` scripts::

  sudo rm /usr/local/bin/easy_install
  sudo rm /usr/local/bin/easy_install-2.6
  sudo rm /usr/local/bin/pip
  sudo rm /usr/local/bin/pip-2.6
  sudo rm /usr/local/bin/virtualenv
  sudo rm /usr/local/bin/virtualenvwrapper.sh

Then follow the instructions in ../install/linux` to install the standard
python environment.

Index
=====

If you have a local PyPI server, and you don't want to use it, then comment out
``index-url`` in::

  ~/.pip/pip.conf
