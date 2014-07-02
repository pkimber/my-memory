arp
***

.. highlight:: bash

ARP stands for Address Resolution Protocol

Arp manipulates or displays the kernel's IPv4 network neighbour cache::

  arp -a

This show the IP addresses and MAC address of the devices your computer *knows*
about on the network.

As I understand it...

  A computer finds devices on the network by sending a broadcast saying *who
  has this IP address*.  The device with that IP address will reply with it's
  MAC address.  This information is cached and is what you see when you run
  ``arp -a``
