Shorewall
*********

Rules
=====

Rules are stored in:

::

  /etc/shorewall/rules

The final column in this file is a port number (or numbers) or a service name from
``/etc/services``.

Example
-------

Here is the rules file from one of my servers:

::

  #SECTION ALL
  #SECTION ESTABLISHED
  #SECTION RELATED
  SECTION NEW

  Trcrt/ACCEPT  all     fw
  ACCEPT        all     fw      tcp ssh
  ACCEPT        all     fw      udp ntp

  ACCEPT        all     fw      tcp http
  ACCEPT        all     fw      tcp https

  # SaltStack
  ACCEPT        all     fw      tcp 4505
  ACCEPT        all     fw      tcp 4506

  ACCEPT        loc     fw      udp snmp

Check
-----

::

  shorewall check

On my personal server, this gives an error message, *Can't open /etc/shorewall/params*

Restart
-------

::

  sudo /etc/init.d/shorewall restart
