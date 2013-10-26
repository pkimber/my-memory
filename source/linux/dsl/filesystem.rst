Filesystem
**********

FAT
===

::

  sudo mkdir /mnt/usb

Then:

::

  sudo mount -t vfat /dev/sda1 /mnt/usb

or:

::

  sudo mount -t vfat /dev/sdb1 /mnt/usb

When you have finished using the drive:

::

  sudo umount /mnt/usb

NTFS
====

Mount NTFS

::

  sudo mkdir /mnt/windows
  sudo mount -t ntfs /dev/hda1 /mnt/windows

