KVM Install
***********

Links
=====

- https://help.ubuntu.com/community/KVM/Installation
  Ubuntu, KVM Installation
- `DistroTube, Virt-Manager Is The Better Way To Manage VMs`_

.. note:: Use a 64 bit kernel (if possible)

To serve more than 2GB of RAM for your VMs, you must use a 64-bit kernel
On a 32-bit kernel install, you'll be limited to 2GB RAM at maximum for a
given VM.  Also, a 64-bit system can host both 32-bit and 64-bit guests. A
32-bit system can only host 32-bit guests.

To see if your processor supports hardware virtualization::

  egrep -c '(vmx|svm)' /proc/cpuinfo

- If 0 is printed, it means that your CPU is not 64-bit.
- If 1 or higher, it supports virtualization.

Check to see if hardware acceleration is enabled::

  kvm-ok

  INFO: /dev/kvm exists
  KVM acceleration can be used

Now see if your running kernel is 64-bit, just issue the following
command::

  uname -m

- ``x86_64`` indicates a running 64-bit kernel.  If you use see i386,
  i486, i586 or i686, you're running a 32-bit kernel (``x86_64`` is synonymous
  with ``amd64``).

Install
=======

Install::

  sudo apt install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils

If you are working on a desktop computer you might want to install a GUI tool to
manage virtual machines::

  sudo apt install virt-manager

Add your user name to the ``libvirt`` and ``kvm`` groups::

  sudo adduser `id -un` libvirt
  sudo adduser `id -un` kvm

.. tip:: logout and login so your user becomes an effective member of ``kvm``
         and ``libvirt`` user groups.

Test (no need for ``sudo`` because members of the ``kvm``/``libvirt`` groups can
run virtual machines)::

  virsh list --all

  Id Name                 State
  -----------------------------

.. note:: If you get an error message, then there is a problem which needs to
          be fixed.

.. Configuration
.. =============
..
.. I want to set-up bridge networking for all virtual machines:
..
.. Install the following packages::
..
..   sudo apt-get install qemu
..   sudo apt-get install libcap2-bin
..
.. On a 64 bit system::
..
..   sudo setcap cap_net_admin=ei /usr/bin/qemu-system-x86_64
..
.. Edit the ``/etc/security/capability.conf`` file and give capabilities to
.. appropriate users e.g::
..
..   cap_net_admin        patrick
..
.. Start by editing ``/etc/network/interfaces``.  Add in the following::
..
..   # KVM
..   # https://help.ubuntu.com/community/KVM/Networking
..   auto eth0
..   iface eth0 inet manual
..
..   auto br0
..       iface br0 inet static
..       address 192.168.11.10
..       network 192.168.11.0
..       netmask 255.255.255.0
..       broadcast 192.168.11.255
..       gateway 192.168.11.1
..       bridge_ports eth0
..       bridge_stp off
..       bridge_fd 0
..       bridge_maxwait 0
..
.. .. note:: I am giving this machine a fixed IP address.
..
.. Re-start networking::
..
..   sudo /etc/init.d/networking restart
..
.. Note:
..
.. - Bridged networking will probably only work on wired networks.
.. - Probably worth re-starting the workstation and making sure it can still
..   connect to the internet.  I couldn't connect to the internet and so had to
..   remove the ``br0`` section...
..
.. Probably worth checking out this article to try and resolve the issue:
.. https://help.ubuntu.com/community/KVM/Networking

Guest
=====

  Follow the :doc:`guest` instructions for creating a guest...


.. _`DistroTube, Virt-Manager Is The Better Way To Manage VMs`: https://www.youtube.com/watch?v=p1d_b_91YlU
