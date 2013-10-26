Debug
*****

.. highlight:: bash

Client (Minion)
===============

Run the minion in the foreground:

::

  stop salt-minion
  salt-minion -l debug

Follow the log file:

::

  tail -f /var/log/salt/minion

Server (Master)
===============

Run the master in the foreground:

::

  stop salt-master
  salt-master -l debug

This can be very useful even without running any commands as the master appears
to parse the files on start-up.
