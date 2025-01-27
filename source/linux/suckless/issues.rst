Suckless (``dwm``) - Issues
***************************

.. highlight:: bash

Crashing (January 2025)
=======================

DWM was crashing when I did things with browsers. To solve the issue::

  cd ~/dev/src/suckless/dwm/
  git revert 970f376
  # and make clean install (or whatever you normally do).

For more details, see `Firefox kills DWM`_

Slow startup of Gnome applications (Dec 23)
===========================================

From `Huge delay when opening GNOME applications`_
(including LibreOffice, Evince and Nautilus)

My ``~/.xinitrc`` file contained::

  exec dwm

To solve the issue, I added the following ``source`` command::

  . /etc/X11/Xsession
  exec dwm

.. tip:: ``. /etc/X11/Xsession`` is copied from ``/etc/X11/xinit/xinitrc``.


.. _`Firefox kills DWM`: https://www.reddit.com/r/suckless/comments/11am3n3/firefox_kills_dwm/
.. _`Huge delay when opening GNOME applications`: https://bbs.archlinux.org/viewtopic.php?id=260902
