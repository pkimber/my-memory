Apache Libcloud
***************

.. highlight:: python

**NOTE**: For servers created on rackspace London/UK, the ``Provider`` must
be ``RACKSPACE_NOVA_LON``

Links
=====

IRC ``#libcloud``

Install
=======

::

  pip install apache-libcloud

Debugging
=========

Create your python script, and run it as follows:

::

  LIBCLOUD_DEBUG=/dev/stderr python my_script.py

Sample
======

Deploy to Rackspace using Libcloud
----------------------------------

https://gist.github.com/3053325
:download:`misc/deploy_script.py`

Site Example (out of date I think)
----------------------------------

Example: Creating a Node from http://libcloud.apache.org/getting-started.html

::

  from libcloud.compute.types import Provider
  from libcloud.compute.providers import get_driver

  INSTALL_OS = 'Ubuntu 12.04 LTS (Precise Pangolin)'
  INSTALL_SIZE = '512MB Standard Instance'

  RACKSPACE_USER = 'yourusername'
  RACKSPACE_KEY = 'yourkey'

  driver = get_driver(Provider.RACKSPACE_NOVA_LON)
  conn = driver(
      'connexionsw',
      'baa9a2b3f374a48e1888b136a344eff4',
      ex_force_auth_url='https://lon.identity.api.rackspacecloud.com/v2.0',
      ex_force_auth_version='2.0')

  # retrieve available images and sizes
  images = conn.list_images()
  for i in images:
      print i.name


.. _Debugging: http://libcloud.apache.org/docs/debugging.html
