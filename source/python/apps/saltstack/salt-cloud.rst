Salt Cloud
**********

Prerequisites
=============

::

  sudo apt-get install python-m2crypto
  sudo apt-get install sshpass

Configuration
=============

Requirements
------------

::

  vim requirements.txt

::

  apache-libcloud
  salt-cloud

Providers
---------

::

  sudo vim /etc/salt/cloud.providers

::

  my-rackspace-config:
    # Set the location of the salt-master
    #
    minion:
      master: ip-address-or-domain-of-my-salt-master

    # Configure Rackspace using the OpenStack plugin
    #
    identity_url: 'https://lon.identity.api.rackspacecloud.com/v2.0/tokens'
    compute_name: cloudServersOpenStack
    protocol: ipv4

    # Set the compute region:
    #
    compute_region: LON

    # Configure Rackspace authentication credentials
    #
    user: my-user-name
    apikey: my-api-key

    provider: openstack

Profiles
--------

::

  sudo vim /etc/salt/cloud.profiles

::

  openstack_512:
    provider: my-rackspace-config
    size: 512MB Standard Instance
    image: Ubuntu 12.04 LTS (Precise Pangolin)

Install
=======

Prerequisites
-------------

::

  sudo apt-get install python-m2crypto

Virtual Environment
-------------------

::

  mkvirtualenv --system-site-packages my_virtual_env
  pip install -r requirements.txt

Usage
=====

::

  sudo ~/.virtualenvs/my_virtual_env/bin/python ~/.virtualenvs/my_virtual_env/bin/salt-cloud -p openstack_512 my.temp.server.name

To debug, add:

::

  -l debug
