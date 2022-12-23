Suckless (``dwm``) - Issues
***************************

.. highlight:: bash

Slow startup of Gnome applications...
=====================================

From `Huge delay when opening GNOME applications`_
(including LibreOffice and Nautilus)

My ``~/.xinitrc`` file contained::

  exec dwm

To solve the issue, I added the following ``source`` command::

  . /etc/X11/Xsession
  exec dwm

.. tip:: ``. /etc/X11/Xsession`` is copied from ``/etc/X11/xinit/xinitrc``.


.. _`Huge delay when opening GNOME applications`: https://bbs.archlinux.org/viewtopic.php?id=260902
