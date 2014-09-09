AWS Command Line Tool
*********************

.. attention:: These notes are being moved to
               https://www.pkimber.net/open/salt-cloud-amazon.html

.. highlight:: bash

From `An Introduction to the AWS Command Line Tool`_

.. tip:: Also see :doc:`../python/apps/saltstack/salt-cloud-amazon`

Install
=======

Create your Access Keys by clicking on your user name in the web console and
selecting *Security Credentials*

Install the command line tool and then configure::

  pip install awscli
  aws configure

Enter your access key and secret key::

  AWS Access Key ID [None]:
  AWS Secret Access Key [None]:
  Default region name [None]: eu-west-1
  Default output format [None]: table

I chose ``eu-west-1`` and ``table`` for the output format.

The following two commands will get the command line tool running::

  aws ec2 describe-regions
  aws ec2 describe-availability-zones

Security Group
==============

Find your external IP address::

  curl ifconfig.me

From `Using Security Groups`_

Create a security group::

  aws ec2 create-security-group \
      --group-name MySecurityGroup \
      --description "My Security Group"
  aws ec2 authorize-security-group-ingress \
      --group-name MySecurityGroup \
      --cidr 198.51.100.100/32 \
      --protocol tcp \
      --port 22
  aws ec2 authorize-security-group-ingress \
      --group-name MySecurityGroup \
      --protocol tcp \
      --cidr 0.0.0.0/0 \
      --port 80
  aws ec2 authorize-security-group-ingress \
      --group-name MySecurityGroup \
      --protocol tcp \
      --cidr 0.0.0.0/0 \
      --port 443

.. note:: Replace the IP address (``198.51.100.100``) above with your own!

If you want to allow ssh access from anywhere, replace the second rule with the
following::

  aws ec2 authorize-security-group-ingress \
      --group-name MySecurityGroup \
      --cidr 0.0.0.0/0 \
      --protocol tcp \
      --port 22

.. tip:: ``authorize-security-group-ingress`` can be repeated as required.

.. tip:: To remove a rule, use ``revoke-security-group-ingress`` with the same
         parameters as ``authorize-security-group-ingress``.

To view the details for the security group::

  aws ec2 describe-security-groups --group-names MySecurityGroup

To delete a security group::

  aws ec2 delete-security-group --group-name MySecurityGroup

Salt Master
-----------

To allow inbound connections to a Salt master...

Create the security group::

  aws ec2 create-security-group \
      --group-name SaltMaster \
      --description "Salt Master"
  aws ec2 authorize-security-group-ingress \
      --group-name SaltMaster \
      --protocol tcp \
      --cidr 0.0.0.0/0 \
      --port 4505
  aws ec2 authorize-security-group-ingress \
      --group-name SaltMaster \
      --protocol tcp \
      --cidr 0.0.0.0/0 \
      --port 4506

Assign the group to the Salt Master:

Find the ``InstanceId``, current group id and the new group id::

  # find the instance id (in this example, the name is 'master-ec2')
  # filter by the 'Name' tag.
  aws ec2 describe-instances --filter Name=tag:Name,Values=master-ec2

  # find the id of the new group
  aws ec2 describe-security-groups --group-names SaltMaster

Assign the old group id and the new group id to the instance::

  ec2-modify-instance-attribute i-6b9cf329 --group-id sg-fd35ea98
  aws ec2 modify-instance-attribute --instance-id i-6b9cf329 --groups sg-fd35ea98 sg-85d41fe0


.. _`An Introduction to the AWS Command Line Tool`: http://www.linux.com/learn/tutorials/761430-an-introduction-to-the-aws-command-line-tool
.. _`Using Security Groups`: http://docs.aws.amazon.com/cli/latest/userguide/cli-ec2-sg.html
