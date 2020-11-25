KVM Guest
*********

.. highlight:: bash

Links
=====

- https://help.ubuntu.com/community/KVM/CreateGuests
- `DistroTube, Virt-Manager Is The Better Way To Manage VMs`_

Prerequisites
=============

Follow the :doc:`install` instructions...

Bridge Network
==============

I am using a NAT network, so we can ssh in from the host to the guest and from
the guest to the host.

I failed trying to setup a bridge network using the
`ArchWiki, Network bridge With iproute2` instructions.  I think I created the
bridge, but couldn't get an IP4 address on the guest (probably a firewall
issue).

virt-manager GUI
================

Convert from VirtualBox (``vdi``) format to Virt-Manager (``qcow2``) format
(from `DistroTube, Virt-Manager Is The Better Way To Manage VMs`_)::

  sudo qemu-img convert -f vdi -O qcow2 Ubuntu-20-04.vdi /var/lib/libvirt/images/ubuntu-20-04.qcow2

Windows 10 - Development
------------------------

.. warning:: This takes up a massive amount of space, so unless you have
             capacity, I would try the `Windows 10 Disc Image (ISO File)`_.

- Get a `Windows 10 development environment`_
- Extract the first archive to get an ``ova`` file.
- Extract the next archive to get an ``vmdk`` file (takes a long time).

Convert the ``vmdk`` file to ``qcow2`` format::

  sudo qemu-img convert -O qcow2 ./WinDev2006Eval-disk001.vmdk /var/lib/libvirt/images/WinDev2006Eval.qcow2

Command Line - Ubuntu VM
========================

Create
------

To create an Ubuntu virtual machine:

If you followed the :doc:`install` instructions (on Ubuntu), you will have
installed the ``ubuntu-vm-builder`` package.

Create the virtual machine::

  sudo ubuntu-vm-builder kvm lucid \
      --bridge=br0 \
      --libvirt qemu:///system \
      --addpkg vim openssh-server \
      --domain newvm \
      --dest newvm \
      --hostname hostnameformyvm \
      --mem 256 \
      --user john \
      --pass doe \
      --ip 192.168.11.77 \
      --mask 255.255.255.0 \
      --net 192.168.0.0 \
      --bcast 192.168.11.255 \
      --gw 192.168.0.1 \
      --dns 192.168.0.1 \
      --components main,universe

- ``openssh-server`` should allow us to ``ssh`` into the new machine.
- ``bridge`` should set-up bridged networking.
- ``libvirt`` will allow us to manage the virtual machine using ``virsh``.
- ``dest``, ``domain`` and ``hostname`` should set to the name of the
  virtual machine.

First Steps
-----------

Note: I don't understand this yet, but this is what I get so far...

Try and list your virtual machine::

  $ virsh -c qemu:///system
  Welcome to virsh, the virtualisation interactive terminal.

  Type:  'help' for help with commands
         'quit' to quit

  virsh # list --all
   Id Name                 State
  ----------------------------------
    - ubuntu               shut off

To start your virtual machine::

  virsh # start ubuntu
  Domain ubuntu started

*Note*: If you get errors like the following::

  error: Failed to start domain ubuntu
  error: Failed to add tap interface to bridge 'br0': No such device

... then make sure you have set-up the ``br0`` interface
(see :doc:`install`, *Configuration* for details).

To view the state of your virtual machine::

  $ virsh -c qemu:///system
  virsh # list --all
   Id Name                 State
  ----------------------------------
    2 ubuntu               running


To connect to your machine console, find the ``Id`` (see previous step)::

  $ virt-viewer --connect qemu:///system 2

Note: You have to click on the window to activate keyboard input.  *Ctrl*,
*Alt* to exit from this mode.


.. _`ArchWiki, Network bridge With iproute2`: https://wiki.archlinux.org/index.php/Network_bridge#With_iproute2
.. _`DistroTube, Virt-Manager Is The Better Way To Manage VMs`: https://www.youtube.com/watch?v=p1d_b_91YlU
.. _`Windows 10 development environment`: https://developer.microsoft.com/en-us/windows/downloads/virtual-machines/
.. _`Windows 10 Disc Image (ISO File)`: https://www.microsoft.com/en-gb/software-download/windows10ISO
