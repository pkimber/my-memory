Commands
********

List
====

`Get a list of all your VirtualBox virtual machines`_
by name and UUID from the shell

::

  VBoxManage list vms

...or to show running machines:

::

  VBoxManage list runningvms

Run
===

`run a VirtualBox virtual machine without a gui`_

::

  VBoxHeadless -s <name|uuid>

Headless
--------

`Running VirtualBox as headless`_

::

  nohup VBoxHeadless -p 3052 -startvm ServidorProducao &

`Save VM running as headless`_

::

  VBoxManage controlvm ServidorProducao savestate


.. _`Get a list of all your VirtualBox virtual machines`: http://www.commandlinefu.com/commands/view/2926/get-a-list-of-all-your-virtualbox-virtual-machines-by-name-and-uuid-from-the-shell
.. _`run a VirtualBox virtual machine without a gui`: http://www.commandlinefu.com/commands/view/2925/run-a-virtualbox-virtual-machine-without-a-gui
.. _`Running VirtualBox as headless`: http://www.commandlinefu.com/commands/view/4360/running-virtualbox-as-headless
.. _`Save VM running as headless`: http://www.commandlinefu.com/commands/view/4361/save-vm-running-as-headless

