Duplicity
*********

I am backing up DropBox repositories for several users.

DropBox
=======

Install the ClearOS *DropBox* app from the Marketplace.

.. warning:: Don't forget to click *Download and Install*

User
====

I create a user for each repository.

To give the user access to the shell, install the *Shell Extension* app from
the Marketplace.

.. warning:: Don't forget to click *Download and Install*

Edit the user and set the *Login Shell* to ``/bin/bash``.

Duplicity
=========

Install the ClearOS *Software Repository* app from the Marketplace.

.. warning:: Don't forget to click *Download and Install*

Select *System*, *Operating System*, *Software Repository*, switch to *Detailed
View* and then *Toggle* the following::

  clearos-core    ClearOS Core 6 - i386 - OS
  clearos-epel    Extra Packages for Enterprise Linux

Install duplicity::

  yum install duplicity

After installing Duplicity, disable the two repositories (``clearos-core`` and
``clearos-epel``).

Config
------


Configure the `Cloud Server`.  The server won't be set-up using SaltStack, so
you will need to:

- create your own SSH Keys_
- copy the GPG keys from your workstation before importing them.
- copy a backup script.
- set-up the cron task.


.. _`Cloud Server`: https://www.pkimber.net/open/backup.html#cloud-server
.. _`How to Enable EPEL Repository`: http://www.tecmint.com/how-to-enable-epel-repository-for-rhel-centos-6-5/
.. _Keys: https://www.pkimber.net/howto/linux/ssh/keys.html
