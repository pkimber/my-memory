Getting Started
***************

Licence
=======

http://www.virtualbox.org/wiki/Licensing_FAQ

::

  6. What exactly do you mean by personal use and academic use in the Personal Use
     and Evaluation License?

     Personal use is when you install the product on one or more PCs yourself and you
     make use of it (or even your friend, sister and grandmother). It doesn't matter
     whether you just use it for fun or run your multi-million euro business with it.
     Also, if you install it on your work PC at some large company, this is still
     personal use.

Download
========

Linux
-----

Downloaded the ``deb`` file,
``virtualbox-2.2_2.2.0-45846_Ubuntu_intrepid_amd64.deb`` and install
from there.

The binary file is installed to:

::

  /usr/bin/VirtualBox

Windows
-------

Download ``VirtualBox_1.5.6_Win_x86.msi``,
(VirtualBox 1.5.6 for Windows hosts x86), from
http://www.virtualbox.org/wiki/Downloads.

Install
=======

Run the installer.

**Note**: Accept installation of the drivers.

Configuration
=============

- Run the *VirtualBox* application.
- Set *Preferences*, *General*, *Default Folders* as follows:

===========  ===============================================
VDI files    ``c:\\repository\\virtualbox\\vdi\``
Machines     ``c:\\repository\\virtualbox\\machines``
===========  ===============================================

::

  [../../images/howto/virtual-box/virtual-box-preferences.gif]

Run
===

- Run the *VirtualBox* application.
- Click *New* to create a new virtual machine.
- Click *Start* to start your virtual machine for the first time.
- On the *Select Installation Media* page you will be given the option to install
  from a CD or an ISO image.  Select your ISO *Image File* in the *Media Source*
  section.  The ISO image can be installed directly from the file and does not need
  to be written to a CD.

Networking
==========

See :doc:`network`.

