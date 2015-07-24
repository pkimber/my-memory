encryptfs
*********

.. highlight:: bash

From https://help.ubuntu.com/community/EncryptedPrivateDirectory

These articles will also be useful:

- `Encrypt Directory in Linux`_
- Encryptfs_

.. note:: The instructions below will probably work if you use a password to
          log in.

Install::

  sudo apt-get install ecryptfs-utils
  ecryptfs-setup-private

Enter your login password, and either choose a mount pass phrase or generate
one.

.. note:: Record both pass phrases in a safe location!!! They will be required
          if you ever have to recover your data manually.

Log out... log back in...

USB Memory Stick
================

Make a folder on the USB device e.g::

  mkdir /media/patrick/pny8gb/Private

Initialise the encrypted file system::

  sudo mount -t ecryptfs /media/patrick/pny8gb/Private /media/patrick/pny8gb/Private
  # enter the 'Passphrase' and then accept all default options

Unmount::

  sudo umount -l /media/patrick/pny8gb/Private


.. _`Encrypt Directory in Linux`: http://miteshjlinuxtips.wordpress.com/2012/11/09/encrypt-directory-in-linux/
.. _Encryptfs: http://bodhizazen.net/Tutorials/Ecryptfs/
