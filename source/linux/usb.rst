usb
***

ISO
===

To copy an ``iso`` to a USB drive, see `install/usb`

List
====

To list usb devices on a system::

  lsusb

To find which ``/dev/`` they are on, run the Gnome *Disks* application ``:(``

Rename
======

From `How to edit label of USB drive?`_

For FAT and FAT32 devices::

  sudo apt-get install mtools

Mount the drive and then::

  # find out the device location of you pen drive.
  # Find the line which goes like ``/dev/sdc1 on /media/disk...``
  # This means the device ``sdc1`` - the drive mounted on ``/media/disk``.

  # unmount the device.
  sudo umount /media/disk

  # label the device
  sudo mlabel -i /dev/sdc1 ::<new_label>

If you get a message like::

  Total number of sectors (7831520) not a multiple of sectors per track (63)!

You can easily ignore the check by running this command::

  echo mtools_skip_check=1 >> ~/.mtoolsrc

Try again and it should work.


.. _`How to edit label of USB drive?`: http://askubuntu.com/questions/194510/how-to-edit-label-of-usb-drive
