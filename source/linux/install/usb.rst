USB
***

To install linux from a USB stick:

- **Make sure the USB drive does not contain any data you want to keep**
- Download the ISO for the distibution you want to use.
- Use either ``dd`` or ``unetbootin``:

dd
==

Make sure the USB drive is not mounted:

::

  sudo dd if=ubuntu-11.10-desktop-amd64.iso of=/dev/sdb oflag=direct bs=1M

unetbootin
==========

::

  sudo apt-get install unetbootin

... or download http://unetbootin.sourceforge.net/ and make the binary file
e.g. ``unetbootin-linux-506`` executable.  (I used Nautilus to do this because
``chmod +x`` didn't seem to work).

Run ``unetbootin`` (or the file you downloaded).

- Select the ISO you want to use.
- *Type*, *USB Drive*

If you like, *UNetbootin* will also download a distibution for you.
