Guest Additions
***************

Linux
=====

Links
-----

- `Installing VirtualBox GuestAdditions on Debian`_

Notes
-----

- Pre-requisites

  ::

    apt-get install linux-headers-$(uname -r)
    apt-get install make
    apt-get install gcc
    apt-get update

- In the settings for the virtual machine, attach the ISO image for the
  guest additions to the CD drive: *File*, *Virtual Media Manager*,
  *CD/DVD Images*, *Add*

  On Windows the guest additions can be found here:

  ::

    C:\Program Files\Sun\xVM VirtualBox\VBoxGuestAdditions.iso

- Re-start the virtual machine.

  ::

    mount /media/cdrom
    cd /media/cdrom
    sh ./VBoxLinuxAdditions-x86.run

Windows
=======

Links
-----

- `Install Guest Additions for a better VirtualBox experience`_

Install
-------

- Do a standard install of Windows and make sure it is working.
- Take a *Snapshot* of the current state of the virtual machine.
- Start your virtual machine...
- In the menu, click *Devices*, *Install Guest Additions...*.
- Click through the installer.
- Click *Continue Anyway* for any drivers which haven't
  *passed Windows Logo testing*.
- Reboot the computer...

Usage
-----

- Mouse pointer integration should be automatically be enabled.  If this
  causes any issues it can be disabled (apparently).
- The size of the Window can be increased by simple dragging...


.. _`Installing VirtualBox GuestAdditions on Debian`: http://www.pascalalma.net/2009/01/13/installing-virtualbox-guestadditions-on-debian/
.. _`Install Guest Additions for a better VirtualBox experience`: http://www.ghacks.net/2009/06/17/install-guest-additions-for-a-better-virtualbox-experience/

