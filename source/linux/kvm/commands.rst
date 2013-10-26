Commands
********

Connect
=======

Find the ``Id`` of your machine (see *List* below):

::

  $ virt-viewer --connect qemu:///system 2

Note: You have to click on the window to activate keyboard input.  *Ctrl*,
*Alt* to exit from this mode.

Delete
======

To delete a virtual machine, first terminate it (if running), and then
undefine it:

::

  $ virsh -c qemu:///system
  # destroy foo_new
  # undefine foo_new

Then remove the files e.g:

::

  rm -r /home/patrick/repo/vm/foo_new

List
====

::

  $ virsh -c qemu:///system
  # list --all
   Id Name                 State
  ----------------------------------
    6 toybox               running
    7 storagebox           running

  virsh # quit

Start
=====

::

  $ virsh -c qemu:///system
  # list --all
  # start machine_name
