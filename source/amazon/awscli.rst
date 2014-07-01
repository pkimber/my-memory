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


.. _`An Introduction to the AWS Command Line Tool`: http://www.linux.com/learn/tutorials/761430-an-introduction-to-the-aws-command-line-tool
