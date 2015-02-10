rc-update
*********

http://gentoo-wiki.com/Rc-update

``rc-update`` is a script for adding/removing/listing available scripts to the
boot, default and nonetwork run levels of your computer. these scripts allow
you to run programs at your computers boot time.

This will set your network to load at the default runlevel:

::

  rc-update add net.eth0 default

This will remove net.eth0 from all runlevels its assigned:

::

  rc-update del net.eth0

