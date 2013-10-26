Upgrade
*******

02/04/2005
==========

Refer to:
http://www.gentoo.org/doc/en/kernel-upgrade.xml

If the following command lists a kernel upgrade then you can upgrade:

::

  emerge -Dup world

Either:

::

  emerge -Du world

or:

::

  emerge -u gentoo-dev-sources

The kernel source will be installed into a sub-folder of /usr/src/

Update the symbolic link to point to the new source code:

::

  cd /usr/src
  ln -sfn linux-2.6.11-gentoo-r4 linux

I have decided to stop using genkernel and start building the kernel manually.

::

  cd /usr/src/linux
  make menuconfig
  make && make modules_install
  cp arch/i386/boot/bzImage /boot/kernel-2.6.11-gentoo-r4
  cp System.map /boot/System.map-2.6.11-gentoo-r4
  cp .config /boot/config-2.6.11-gentoo-r4

Next need to "Installing Separate Kernel Modules".  See:

http://www.gentoo.org/doc/en/handbook/handbook-x86.xml?part=1&chap=7#kernel_modules

After this:

::

  modules-update

Then need to configure grub.  So edit

::

  /boot/grub/grub.conf

When we don't use genkernel the config is much simpler:
There is no initrd line - the kernel line is just like this:

::

  kernel /kernel-2.6.11-gentoo-r4 root=/dev/hda3

