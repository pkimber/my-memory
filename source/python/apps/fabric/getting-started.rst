Fabric
******

.. highlight:: python

- Fabric_ is a simple pythonic remote deployment tool.

Install
=======

::

  pip install fabric

Usage
=====

The default name for the *fabfile* is ``fabfile.py``.  If your file is named
``fabfile.py``, and it contains a the following code:

::

  from fabric.api import run

  env.hosts = ['server',]

  def host_type():
      run('uname -s')

To run the command on the server:

::

  fab host_type


.. _Fabric: http://docs.fabfile.org/
