Clone
*****

Compact
=======

To compact a virtual machine, ready for cloning, log into your guest
operating system (in this case linux - the commands for Windows will
obviously be different):

::

  dd if=/dev/zero of=junk
  sync
  rm junk

**Note**: This command will increase the size of your ``vdi`` file
(including the compacted version), but if you archive the file... it will be
smaller.

::

  cd "C:\Program Files\Sun\xVM VirtualBox"
  VBoxManage.exe modifyvdi c:\repository\virtualbox\vdi\toybox.vdi compact

Clone
=====

Note: You might like to *compact* (see above) the guest operating system
before performing a clone...

You should only make copies of virtual disk images using the utility
supplied with VirtualBox, ``VBoxManage clonevdi``.  This is because
VirtualBox assigns a unique identity number (UUID) to each disk image, which
is also stored inside the image, and will refuse to work with two images
that use the same number.

::

  cd "C:\Program Files\Sun\xVM VirtualBox"
  VBoxManage.exe clonevdi c:\repo\virtualbox\vdi\toybox.vdi c:\temp\toybox-2008-01-13.vdi

Import
======

To import the virtual machine onto the other workstation:

- Copy the image to the ``vdi`` folder e.g.

  ::

    c:\repository\virtualbox\vdi\toybox.vdi

- Select *File*, *Virtual Disk Manager* and *Add* the image...
- From the main menu, create a *New* virtual machine and choose *Existing*
  for the *Boot Hard Disk*...


**Note**: If networking does not work see :doc:`issues`,
*Network - After Clone*...

