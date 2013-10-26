Issues
******

Display
=======

On my Windows XP virtual machine, a re-start seems to corrupt the display
with vertical green bars.  To solve, just *Close*, *Power off the machine*
and then *Start*...

Network - After Clone
=====================

If you are using Debian Linux and the network will not work after importing
to another workstation, delete all the lines from:

::

  /etc/udev/rules.d/z25_persistent-net.rules

Note: On Debian 5.0 this file is:

::

  /etc/udev/rules.d/70-persistent-net.rules

I also added ``auto eth0`` to ``/etc/network/interfaces`` (but this
probably didn't help).

For more information see http://www.virtualbox.org/ticket/660,
Cloning Debian Etch guest breaks networking...

Network - Bridge - LAN
======================

I had setup my :doc:`network` but it wasn't working.

It turned out I had bridged from the *Virtual Box TAP Adapter* to the
*Local Area Connection*, but my network cable was unplugged and my laptop
was using the *Wireless Network Connection*.

To solve the problem I just connected the network cable to enable my
*Local Area Connection*.

Network - Install
=================

If the host operating system cannot find the network (DHCP server etc), then
try with a physical cable rather than a wireless connection.

