Getting Started
***************

.. highlight:: bash

Install
=======

Prerequisites
-------------

::

  apt-get install python-software-properties
  apt-get install add-apt-repository
  add-apt-repository ppa:saltstack/salt
  apt-get update

Master
------

::

  apt-get install salt-master

Minion
------

::

  apt-get install salt-minion
  vim /etc/salt/minion
  # edit the 'master' to point to the master e.g:
  # master: connexionsw.com
  restart salt-minion

  # on debian
  /etc/init.d/salt-minion restart

If the minion is running on the same server, then set the master to ``localhost``.

Master
------

Note: You might need to open firewall ports on the server to allow connections.  For a little more
information, see :doc:`../../../linux/apps/shorewall`

::

  # list the keys accepted and unaccepted Salt keys:
  salt-key -L
  # accept the key:
  salt-key -a <client>
  # check that all your clients are accepting commands:
  salt '*' test.ping
  # run a command on the clients (minions):
  salt '*' cmd.run 'uname -a'

Note: I had to re-start the minion before this would work properly.

State Management
================

:doc:`state`
