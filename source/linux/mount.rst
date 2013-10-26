mount
*****

All
===

To mount all available drives:

::

  mount -a

List
====

See :doc:`system` for a command to list all available partitions.

Prepare
=======

I think ``/etc/fstab/`` has to be set-up correctly:

::

  /dev/fd0                /mnt/floppy     auto            noauto                  0 0

Floppy
======

::

  mount -t vfat /dev/fd0 /mnt/floppy
  ls -la /mnt/floppy/
  umount /dev/fd0
