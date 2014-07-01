AWS Command Line Tool
*********************

.. highlight:: bash

From `An Introduction to the AWS Command Line Tool`_

Also see :doc:`../python/apps/saltstack/salt-cloud-amazon`

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
--------------

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
      --protocol tcp --port 22

.. note::

  Replace the IP address above with your own!

  ``authorize-security-group-ingress`` can be repeated as required.

To view the details for the security group::

  aws ec2 describe-security-groups --group-names MySecurityGroup

To delete a security group::

  aws ec2 delete-security-group --group-name MySecurityGroup


.. _`An Introduction to the AWS Command Line Tool`: http://www.linux.com/learn/tutorials/761430-an-introduction-to-the-aws-command-line-tool
.. _`Using Security Groups`: http://docs.aws.amazon.com/cli/latest/userguide/cli-ec2-sg.html
