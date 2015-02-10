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


.. _`How to Enable EPEL Repository`: http://www.tecmint.com/how-to-enable-epel-repository-for-rhel-centos-6-5/
