KVM Guest
*********

Links
=====

- https://help.ubuntu.com/community/KVM/CreateGuests

Prerequisites
=============

Follow the :doc:`install` instructions...

Ubuntu VM
=========

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
