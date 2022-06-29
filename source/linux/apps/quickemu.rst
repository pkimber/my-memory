Quickemu
********

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
