Salt Cloud - Amazon
*******************

.. highlight:: bash

Following `How to Provision AWS EC2 Instances with Salt Cloud`_

Configure
=========

Follow the instructions in :doc:`../../../amazon/awscli`

Key
---

Create a private and public SSH key (replace ``patrick`` with your user name
and replace ``my_salt_cloud_key`` with a key name of your choice)::

  ssh-keygen -f ~/.ssh/my_salt_cloud_key -t rsa -b 4096
  aws ec2 import-key-pair --key-name my_salt_cloud_key \
      --public-key-material file:///home/patrick/.ssh/my_salt_cloud_key.pub

Add the key to your agent::

  ssh-add ~/.ssh/my_salt_cloud_key

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
    # ip address salt-cloud should connect to
    ssh_interface: private_ips
    # aws credentials
    id: YourAmazonId
    key: 'YourAmazonKey'
    # ssh key
    keyname: my_salt_cloud_key
    private_key: /home/patrick/.ssh/my_salt_cloud_key
    # aws location
    location: eu-west-1
    availability_zone: eu-west-1a
    # aws security group
    securitygroup: MySecurityGroup
    # aws ami
    size: Micro Instance
    # delete aws root volume when minion is destroyed
    del_root_vol_on_destroy: True
    # local user
    ssh_username: root
    # rename on destroy
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
  salt-cloud
    --profiles=/home/patrick/repo/dev/module/deploy/salt-cloud/cloud.profiles \
    --providers-config=/home/patrick/repo/dev/module/deploy/salt-cloud/cloud.providers \
    --profile base_ec2_private \
    test01

Log into your new server::

  # no longer need to be 'root'
  exit
  ssh ubuntu@54.77.12.170


.. _`How to Provision AWS EC2 Instances with Salt Cloud`: http://www.linux.com/learn/tutorials/772719-how-to-provision-aws-ec2-instances-with-salt-cloud
