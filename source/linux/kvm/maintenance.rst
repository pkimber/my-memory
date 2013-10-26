Maintenance
***********

Start by list your virtual machines:

  ::

    $ virsh -c qemu:///system
    Welcome to virsh, the virtualisation interactive terminal.

    Type:  'help' for help with commands
           'quit' to quit

    virsh # list --all
     Id Name                 State
    ----------------------------------
      - ubuntu               shut off

Commands
========

Miscellaneous
-------------

::

  virsh # suspend ubuntu
  virsh # resume ubuntu
  virsh # shutdown ubuntu

*Note*: Ubuntu 10.04 server doesn't have acpid installed by default.  This
package needs to be installed on the guest OS before it will listen to any
requests from the host.

Force Shutdown
--------------

::

  virsh # destroy ubuntu
  Domain ubuntu destroyed
  
  virsh # list --all
   Id Name                 State
  ----------------------------------
    - ubuntu               shut off

  ...equivalent to taking the power cable off.

