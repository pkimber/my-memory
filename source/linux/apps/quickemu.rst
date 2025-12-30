Quickemu
********

.. tip:: Install `Spice Tools`_. Everything will be better!

https://github.com/quickemu-project/quickemu

Start our Windows 10 VM to show the name of the ``qcow2`` file::

  quickemu --vm windows-10.conf --display spice

  #  Quickemu 3.11 using /usr/bin/qemu-system-x86_64 v6.0.0
  # - Host:     Ubuntu 21.04 running Linux 5.11 (pc-c)
  # ...
  # - Disk:     windows-10/disk.qcow2 (64G)

For information, find the name of the ``qcow2`` file, shutdown the VM::

  qemu-img info windows-10/disk.qcow2

To increase the size of the hard drive::

  qemu-img resize windows-10/disk.qcow2 +100G

Spice Tools
===========

For copy, paste, faster screen drivers!

Download ``spice-guest-tools-latest.exe`` from the `Spice download page`_

Use ``scp`` to copy ``spice-guest-tools-latest.exe`` and run the installer.

To run ``quickemu`` with the SPICE display::

  quickemu --vm windows-10.conf --display spice

.. tip:: If you want to try the *Resize to* menu item, then a good resolution
         is 2048 × 1080.

virtio-win (not sure what this is for)!
=======================================

https://github.com/virtio-win

In your Windows install, browse to ``CD Drive (E:) virtio-win-x.x.xxx``.

Double click on ``virtio-win-guest-tools.exe`` and install all the options.

Windows will behave 100% more like Windows!


.. _`Spice download page`: https://www.spice-space.org/download.html
