Configuration
*************

.. highlight:: bash

Cache
=====

To create download cache, set the ``PIP_DOWNLOAD_CACHE`` environment
variable:

Create a folder for the cache::

  mkdir -p ~/repo/pip_download_cache

Set the environment variable in ``~/.bashrc``::

  export PIP_DOWNLOAD_CACHE=~/repo/pip_download_cache

Virtual Environment
===================

To force PIP to respect the virtual environment, add the following to your
``~/.bashrc`` file::

  export PIP_RESPECT_VIRTUALENV=true
