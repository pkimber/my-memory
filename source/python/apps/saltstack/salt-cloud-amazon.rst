Salt Cloud - Amazon
*******************

.. highlight:: bash

Following `How to Provision AWS EC2 Instances with Salt Cloud`_

Configure
=========

Follow the instructions in :doc:`../../../amazon/awscli`

Key
---

Create a private and public SSH key (replace ``my_salt_cloud_key`` with a key
name of your choice)::

  sudo ssh-keygen -f /etc/salt/my_salt_cloud_key -t rsa -b 4096
  aws ec2 import-key-pair --key-name my_salt_cloud_key \
        --public-key-material file:///etc/salt/my_salt_cloud_key.pub

.. Add the key to your agent::
.. ssh-add ~/.ssh/my_salt_cloud_key

::

  ssh-add /etc/salt/my_salt_cloud_key.pub

To list key pairs::

  aws ec2 describe-key-pairs

To remove a key pair::

  aws ec2 delete-key-pair --key-name my_salt_cloud_key

Salt Cloud
----------

Add an image to ``cloud.profiles`` e.g::

  base_ec2_private:
    provider: kb_eu_west_1_private_ips
      image: ami-ff498688

- I chose ``ami-ff498688`` from
  http://cloud-images.ubuntu.com/releases/14.04/release/ (which I hope it a 32
  bit micro instance).
- The ``provider`` is the name of the section in ``cloud.providers``

Add a ``provider`` to ``cloud.providers``::

  kb_eu_west_1_private_ips:
    # Set up the location of the salt master
    #
    minion:
      master: salt.master.pkimber.net

    # Specify whether to use public or private IP for deploy script.
    #
    # Valid options are:
    #     private_ips - The salt-master is also hosted with EC2
    #     public_ips - The salt-master is hosted outside of EC2
    #
    ssh_interface: public_ips

    # Set the EC2 access credentials
    #
    id: YourAmazonId
    key: 'YourAmazonKey'

    # Make sure this key is owned by root with permissions 0400
    #
    keyname: my_salt_cloud_key
    private_key: /etc/salt/my_salt_cloud_key
    securitygroup: KbSecurityGroup

    # Optionally configure default region
    #
    location: eu-west-1
    availability_zone: eu-west-1a

    # aws ami
    size: Micro Instance
    # delete aws root volume when minion is destroyed
    del_root_vol_on_destroy: True

    # Configure which user to use to run the deploy script. This setting is
    # dependent upon the AMI that is used to deploy. It is usually safer to
    # configure this individually in a profile, than globally. Typical users
    # are:
    #
    # Amazon Linux -> ec2-user
    # RHEL         -> ec2-user
    # CentOS       -> ec2-user
    # Ubuntu       -> ubuntu
    #
    ssh_username: ubuntu

    # rename instances when they are destroyed.
    #
    rename_on_destroy: True

    provider: ec2

- Replace ``YourAmazonId`` and ``YourAmazonKey`` with your ID and key.
- Update the ``keyname`` and ``private_key`` so they match your own key name.
- Find the ``availability_zone`` for your ``location`` by running
  ``aws ec2 describe-availability-zones``
- Make sure the ``securitygroup`` matches the name you chose.

Usage
=====

Create a test server::

  sudo -i
  salt-cloud \
    --profiles=/home/patrick/repo/dev/module/deploy/salt-cloud/cloud.profiles \
    --providers-config=/home/patrick/repo/dev/module/deploy/salt-cloud/cloud.providers \
    --profile base_ec2_private \
    test01

Log into your new server::

  sudo -i
  eval `ssh-agent`
  ssh-add /etc/salt/my_salt_cloud_key
  ssh ubuntu@54.77.12.170

.. note:: The IP address of the new server will be displayed when the
          ``salt-cloud`` command finishes.

To get root access (on this Ubuntu server)::

  sudo -i


.. _`How to Provision AWS EC2 Instances with Salt Cloud`: http://www.linux.com/learn/tutorials/772719-how-to-provision-aws-ec2-instances-with-salt-cloud
