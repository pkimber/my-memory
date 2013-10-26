Security
********

Network Access
==============

To allow access to the PostgreSQL server from a workstation edit the following
files:

Network
-------

*Gentoo*

::

  /etc/conf.d/postgresql

Add ``-i`` to the ``PGOPTS`` option:

::

  # Extra options to run postmaster with.
  # If you want to enable TCP/IP for PostgreSQL, add -i to the following:
  # PGOPTS="-N 1024 -B 2048 -i"
  PGOPTS="-i"

*Debian*

::

  /etc/postgresql/8.3/main/postgresql.conf

Change the line:

::

  #listen_addresses = 'localhost'

to:

::

  listen_addresses = '*'

...and also change the line:

::

  #password_encryption = on

to:

::

  password_encryption = on

Permissions
-----------

Then set-up permissions by editing the ``pg_hba.conf`` file:

::

  /var/lib/pgsql/data/pg_hba.conf

...on debian linux, the file was here:

::

  /etc/postgresql/8.3/main/pg_hba.conf

Add the IP address and subnet mask of the workstation to the *IPv4* section:

::

  # IPv4 local connections:
  host    all         all         127.0.0.1/32          trust
  host    all         all         10.10.10.148/32       trust
  host    all         all         10.10.10.6/32         trust

To calculate the mask the following calculator may be useful:
http://www.subnet-calculator.com/cidr.php.

Also the following pages:

- http://www.unixwiz.net/techtips/netmask-ref.html
- http://www.computerhope.com/jargon/n/netmask.htm

Common mask values are:

========  ===========  ===============  ============================
**Mask**  **# Hosts**  **Netmask**      **Description**
========  ===========  ===============  ============================
/32       1            255.255.255.255  A single IP address
/24       256          255.255.255.0    Class C network
/16       65536        255.255.0.0      Class B network
========  ===========  ===============  ============================

e.g. My local network is ``192.168.11...``:

::

  # IPv4 local connections:
  host    all         all         127.0.0.1/32          md5
  host    all         all         192.168.11.0/24       md5

Restart *PostgreSQL*:
---------------------

::

  /etc/init.d/postgresql restart
