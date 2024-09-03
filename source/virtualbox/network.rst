Network
*******

Links
=====

- `Virtualbox Host Interface Networking - Windows host, Ubuntu guest`_
- `Additions and SSH Access to a VirtualBox Guest`_
- `Howto Access via ssh a Virtualbox Guest machine`_.

Setup
=====

To allow the Windows host to connect to the Linux guest operating system:

Host Setup (Windows)
--------------------

- Create a new virtual machine (see :doc:`getting-started`).
- Click on Network to configure network settings for your VM
- In the latest installation I did, I just selected *Bridged Adapter*,
  and everything just worked!

  **Note**: On Virtual Box 2.2.0, I wanted to created a Debian virtual machine
  which could access the internet AND I could connect to using ``putty``.
  The only way I could get this working was with a *Bridged Network* (had to
  *Repair* the Virtual Box install before I could select a
  *Bridged Network Adpater*.

  **Note**: Don't think we need the following instructions any more...

  - Add a new host interface by click the add button next to the Host
    Interfaces select box.  Name it anything you like.
  - Change the *Attached to* option to Host Interface.  Choose your new host
    interface in the Interface name option.

    ::

      Network Settings
      ../../images/howto/virtual-box/network-settings.gif

  - This will create a virtual interface TAP adapter in the Windows Network
    Connections.
  - Go to the Windows Network Connections.  Highlight your main connection and
    the new virtual interface, right click and choose Bridge Connections.

    ::

      Network Connections
      ../../images/howto/virtual-box/network-connections.gif

    This is how the network connections screen looks after the bridge is set-up:

    ::

      Network Connections
      ../../images/howto/virtual-box/network-connections-result.gif

    Now all packets sent to or from the virtual interface will be routed through your
    main network connection.

  Now to set up the client:

Guest Setup (Linux)
-------------------

- Start the virtual machine with Ubuntu Installed (Debian in my case).
- Make sure ssh is installed (:doc:`../linux/debian/install`).

.. 23/03/2008 I am not sure this needs to be done... I have removed the extra
..            section from toybox, and everything is working perfectly.  The IP
..            address changes every time I start the virtual machine... but that is
..            a separate problem.
..
..
..   [[3]] Set up your network interface
..
.. ---
.. vim /etc/network/interfaces
.. ---
..
.. ---
.. # This file describes the network interfaces available on your system
.. # and how to activate them. For more information, see interfaces(5).
..
.. # The loopback network interface
.. auto lo
.. iface lo inet loopback
..
.. # The primary network interface
.. allow-hotplug eth0
.. iface eth0 inet dhcp
..
.. # Virtual Box
.. iface eth1 inet static
.. address 192.168.11.99
.. netmask 255.255.255.0
.. network 192.168.0.0
.. broadcast 192.168.0.266
.. gateway 192.168.11.1
.. ---
..
..   For the <Virtual Box> settings, I looked at my Windows settings and:
..
..     * Set the interface to <<<eth1>>> (<<<eth0>>> is already defined and I think it
..     is needed for access to the internet).
..
..     * Chose a static address well above the one allocated to my Windows workstation
..     (which was <<<192.168.11.67>>>).
..
..     * The <<<netmask>>> and <<<gateway>>> is set to the same as my Windows
..     workstation.
..
..     * I didn't really know how to set <<<network>>> and <<<broadcast>>>.
..
..     []
..
..   [3] Set up your nameservers
..
.. ---
.. vim /etc/resolv.conf
..
.. nameserver xx.xx.xx.xx
.. nameserver xx.xx.xx.xx
.. ---
..
..   <<Note>>: I left this bit out (I have no idea what settings to use).

- Restart the network

  ::

    /etc/init.d/networking restart

- Test

  ::

    ifconfig

  ...(we should see the address set in the ``/etc/network/interfaces``
  file)...  but we don't... but the address we see is the one to use...

.. ---
.. ping -c3 192.168.0.1
.. ---
..
..   <<Note>>: In my case the address was different to the one set in
..   <<</etc/network/interfaces>>> (<<<192.168.11.68>>>).

Issues
======

``eth0``
--------

http://www.debianhelp.org/node/2432

I was not sure ``eth0`` existed, so I browsed for ``allow-hotplug`` and
found the above article.  When I ran:

::

  dhclient eth0

...the message makes me think that ``eth0`` does not exist.  When I ran:

::

  dhclient eth1

...the network burst into life...


.. _`Virtualbox Host Interface Networking - Windows host, Ubuntu guest`: http://georgelantz.com/2007/11/27/virtualbox-host-interface-networking-windows-host-ubuntu-guest/
.. _`Additions and SSH Access to a VirtualBox Guest`: http://allisterx.blogspot.com/2008/05/additions-and-ssh-access-to-virtualbox.html
.. _`Howto Access via ssh a Virtualbox Guest machine`: http://mydebian.blogdns.org/?p=148
