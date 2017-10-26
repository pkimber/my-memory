Borg Backup
***********

.. highlight:: bash

https://borgbackup.readthedocs.io/

This backup failed::

  apt install borgbackup

Try ``pip``::

  apt install libacl1-dev libacl1 libssl-dev openssl liblz4-dev

  virtualenv --python=python3 venv-borg
  pip install Cython
  pip install borgbackup

Using this script: :download:`misc/borg.sh`

Try ``borgmatic``::

  pip install borgmatic
  generate-borgmatic-config --destination borg.yaml

Issues
======

::

  distutils.errors.DistutilsError: Could not find suitable distribution for Requirement.parse('setuptools_scm>=1.7')
  pip install setuptools_scm
