Network
*******
.. highlight:: bash

From `ThinkPad X220 Ubuntu Configuration Guides`_, if wireless networking no
longer works after resuming from suspend, enter the following command::

  sudo systemctl restart network-manager.service

Enable WiFi
===========

Networking on::

  nmcli networking on

WiFi on::

  nmcli radio wifi on

Connect
=======

::

  apt install wicd-curses

Re-start the computer...

List WiFi networks and connect::

  wicd-curses


.. _`ThinkPad X220 Ubuntu Configuration Guides`: http://x220.mcdonnelltech.com/ubuntu/#wifi
