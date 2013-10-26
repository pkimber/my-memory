Remote
******

**Note**: Before you start...

- Remember to copy the jar files for the test application into the ``lib/ext``
  folder on the workstation and server.
- If another application on the same server starts an Rmi Registry then JMeter
  will NOT start *(my app starts an Rmi Registry)*.

On the remote server run:

::

  jmeter-server.bat

I installed JMeter on a server in my home folder.  So to run:

::

  cd E:\home\patrickk\tools\jakarta-jmeter-2.1.1\bin\
  jmeter-server.bat

On the local workstation start JMeter with a command line parameter which lists
remote hosts:

::

  jmeter -Jremote_hosts=10.10.10.246

To start the test, open the test script, select *Run*, *Remote Start*,
``ip address``

History
=======

Note:

Had to install JMeter version 2.1.1 on both server and workstation before it
would work.

JMeter failed to start on the server - I don't think the RMI server had time to
get going.

Just re-started JMeter without shutting down the RMI command prompt.  All OK.

