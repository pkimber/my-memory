History
*******

17/04/2007
==========

My Linux was all set-up on an 8GB hard disk.  The aim is to copy the
filesystem onto a 40GB hard disk so we have more space for testing...

::

  # List all partitions.
  fdisk -l
  fdisk /dev/hdb
  mkfs.ext3 /dev/hdb1
  cd /mnt
  mkdir rootfs
  mount /dev/hdb1 rootfs/
  df -H
  mkswap /dev/hdb2
  cd /mnt/rootfs
  # Copy the filesystem from the old hard disk to the new one.
  cp -ax / .

Could not install ``grub`` because we forgot to copy the devices:

::

  # reboot
  fdisk -l
  cd tmp
  mkdir hda1
  mount /dev/ide/host0/bus0/target0/lun0/disc /tmp/hda1
  cd /hda1/dev
  cp -a /dev/*
  cd /hda1
  chroot /tmp/hda1
  grub-install /dev/ide/host0/bus0/target0/lun0/disc

Could not install ``grub``.  Could not install ``grub`` using the debian
installer... so we will put both hard disks in the workstation, use the
existing 8GB drive for ``linux`` and the new 40GB hard disk for large files
and data.

::

  fdisk /dev/hdc
  mkfs.ext3 /dev/hdc1
  cd /mnt
  mkdir data
  mount /dev/hdc1 /mnt/data
  cd /mnt/data
  df -H
  vi /etc/fstab

Contents of ``fstab`` (Note: the ``hdc1`` entry):

::

  # /etc/fstab: static file system information.
  #
  # <file system> <mount point>   <type>  <options>       <dump>  <pass>
  proc            /proc           proc    defaults        0       0
  /dev/hda1       /               ext3    defaults,errors=remount-ro 0       1
  /dev/hda5       none            swap    sw              0       0
  /dev/hdd        /media/cdrom   udf,iso9660 user,noauto     0       0
  /dev/fd0        /media/floppy0  auto    rw,user,noauto  0       0
  /dev/hdc1       /mnt/data       ext3    defaults,errors=remount-ro      0       0

