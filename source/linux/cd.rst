CD
**

To make an ``iso`` from a CD:

::

  dd if=/dev/cdrom of=cd.iso

To copy the ``iso`` to a blank CD (``umount`` the CD first):

::

  cdrecord -v -eject speed=48 dev=/dev/cdrom cd.iso
