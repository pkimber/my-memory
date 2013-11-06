Networking
**********

Links
=====

- `Top 5 unix network monitoring utilities`_

Gateway
=======

To find the IP address of your network gateway:

::

  $ route -n
  Kernel IP routing table
  Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
  192.168.11.0    0.0.0.0         255.255.255.0   U     0      0        0 br0
  192.168.122.0   0.0.0.0         255.255.255.0   U     0      0        0 virbr0
  169.254.0.0     0.0.0.0         255.255.0.0     U     1000   0        0 br0
  0.0.0.0         192.168.11.1    0.0.0.0         UG    100    0        0 br0

Check the line with the ``UG`` flag ``U`` indicates that route is up and ``G``
indicates that it is gateway.

The following command will produce very similar output:

::

  netstat -nr

DNS
===

The DNS server should be listed in:

::

  /etc/resolv.conf

`To view the DNS configuration of a Windows workstation`_.

Lookup
------

To lookup the DNS information for a site (including IP address):

::

  dig news.bbc.co.uk

IP
==

To find the IP address:

::

  ifconfig

To set the IP address, edit the following files:

::

  /etc/network/interfaces
  /etc/resolv.conf

hosts
=====

The file:

::

  /etc/hosts

Is normally used in preference to a DNS server.  The file is used by the
workstation to lookup the IP address for a server and to find the fully
qualified name from an alias.

The fully qualified domain name needs to be entered.  To leave it out would
imply some kind of DNS search as a command would not know if this was a top
level domain or a host on the local network.

- An example file:

  ::

    127.0.0.1       woody.pjdk.co.uk    woody        localhost.localdomain   localhost
    10.10.10.4      weezy.pjdk.co.uk    weezy
    10.10.10.5      buzz.pjdk.co.uk     buzz

- Another example file:

  ::

    127.0.0.1>--localhost
    127.0.1.1>--buzz

    192.168.11.68   bigbox
    192.168.11.69   toybox
    192.168.11.73   storagebox
    192.168.11.70   openerp-dev

    # The following lines are desirable for IPv6 capable hosts
    ::1     ip6-localhost ip6-loopback
    fe00::0 ip6-localnet
    ff00::0 ip6-mcastprefix
    ff02::1 ip6-allnodes
    ff02::2 ip6-allrouters
    ff02::3 ip6-allhosts

  ``host`` is a simple utility for performing DNS lookups.  It is normally
  used to convert names to IP addresses and vice versa:

  ::

    host mail.yahoo.com

NFS
===

- :doc:`nfs`

nmap
====

To see which ports are open on a server:

::

  nmap <ip address>

e.g.

::

  nmap 10.10.10.4

telnet
======

To see if a port is running a service:

::

  telnet <ip address> <port>

e.g.

::

  telnet 10.10.10.4 80

Probably have to close down the telnet window (I don't know how to close it
properly).


.. _`Top 5 unix network monitoring utilities`: http://immike.net/blog/2007/05/01/top-5-unix-network-monitoring-utilities/
.. _`To view the DNS configuration of a Windows workstation`: ../windows/network.html
