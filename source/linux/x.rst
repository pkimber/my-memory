X
*

Config
======

X configuration file:

::

  /etc/X11/xorg.conf

To find the specification of a monitor you can try the knoppix utility:

::

  emerge -av ddcxinfo-knoppix
  ddcxinfo-knoppix -modes
  ddcxinfo-knoppix -monitor

Log
===

Error log:

::

  /var/log/Xorg.0.log

Start
=====

To start X

::

  startx

XServer
=======

- Download and install Xming_
- Download and install putty_.
- Configure ``putty``:

  *Connection*, *SSH*, *X11*, tick *Enable X11 forwarding*.
  In the *X display location*, enter ``localhost:0``:

  [../../images/howto/linux/putty-ssh-x11.jpg]

- Create a launch configuration by running *XLaunch* (part of the Xming
  installation).

  - Select *Start no client*.
  - Make sure you tick *No Access Control*.
  - Click *Save configuration* and make a note of where you save the
    ``.xlaunch`` file.

- Start *Xming* by double clicking on the ``.xlaunch`` file.
- Log into your Linux box using ``putty``.  At the Linux terminal, you
  might need to type:

  ::

    DISPLAY=your.windows.ip.address:0.0;export DISPLAY

- To test the *Xming* server:

  ::

    xclock &

  Note: When I tried this, the fonts look messy.  More information on fonts
  can be found here: `Xming Fonts`_

Logging
-------

If you have any issues with the connection, check the *Xming* log.  This can
be found by right clicking on the *Xming* icon in the toolbar...

Multi-Monitor (Rotate)
----------------------

From the comments on `Ubuntu: Rotate only one of two monitors`_...

... *After messing around a bit with xorg.conf, the solution for me was
surprisingly simple: Completely remove all NVIDIA drivers and the xorg.conf. In
the display settings I can now rotate and position both displays individually
in a few seconds without having to change xorg.conf and without restarting X*.

*The downside is that Compiz doesn't work*...

Version
-------

::

  X -version


.. _Xming: http://www.straightrunning.com/XmingNotes/
.. _putty: ssh.html
.. _`Xming Fonts`: http://www.straightrunning.com/XmingNotes/fonts.php
.. _`Ubuntu: Rotate only one of two monitors`: http://viktorstanchev.com/blog/ubuntu-11.04-rotate-only-one-of-two-monitors

