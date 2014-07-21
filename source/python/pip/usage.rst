pip
***

.. highlight:: bash

Links
=====

http://pip.openplans.org/

Help
====

To get help on a command (e.g. ``install``)::

  pip help install

Install
=======

Packages
--------

::

  pip install django
  pip install yolk

Local
-----

To install a package locally rather than in the system folders::

  pip install --user markdown2

**Note** I would normally use a :doc:`../virtualenv/virtualenv` for this...

Source
------

Bazaar::

  pip install bzr+http://download.gna.org/pychart/bzr-archive#egg=pychart

GIT::

  pip install git+git://github.com/rackspace/python-cloudfiles.git#egg=python-cloudfiles

To install a branch, use the ``@`` parameter e.g::

  pip install git+https://github.com/django-compressor/django-compressor.git@develop#egg=compressor

Mercurial::

  pip install hg+ssh://hg@server/django-persistent-messages#egg=django-persistent-messages

To install a specific revision::

  pip install hg+ssh://hg@server/django-persistent-messages@1a70941d2d66#egg=django-persistent-messages

Uninstall
=========

::

  pip uninstall hgsubversion

Upgrade/Update
--------------

::

  pip install --upgrade sphinx

Version
-------

::

  pip install Django==1.1

Edit Mode
=========

Packages normally install under ``site-packages``, but when you're making
changes, it makes more sense to run the package straight from the checked-out
source tree. *Editable* installs create a ``.pth`` file in ``site-packages``
that extends Python's import path to find the package::

  pip install -e path/to/SomePackage

virtualenv
==========

To force PIP to respect the virtual environment, add
`PIP_RESPECT_VIRTUALENV to your .bashrc configuration file`_
...or use the ``-E`` parameter passing the path to the folder of the
virtual environment e.g::

  pip -E ~/repo/ve/my-virtual-env/ install http://dist.repoze.org/PIL-1.1.6.tar.gz


.. _`PIP_RESPECT_VIRTUALENV to your .bashrc configuration file`: config.html
