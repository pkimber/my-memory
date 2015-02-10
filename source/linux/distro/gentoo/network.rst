Network
*******

I had trouble setting up my network configuration file:

::

  /etc/conf.d/net

There is a Gentoo utility, ``net-setup``, which asks a few questions before
writing the file for you.

To install this utility:

::

  emerge -av livecd-tools

**Note**: This utility writes the network configuration in a deprecated syntax.
I have finally managed to get a good up to date network configuration for
weezy.

See revision 446 of
https://weezy/svn/backup/linux-config/weezy/etc/conf.d/net.

The static IP address, netmask and broadcast address are set in this line:

::

  config_eth0=( "192.168.1.78 netmask 255.255.255.0 broadcast 192.168.1.255" )

The gateway configuration is set in the following line:

::

  routes_eth0=( "default gw 192.168.1.1" )

