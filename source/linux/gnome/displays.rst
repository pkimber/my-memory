Displays
********

.. highlight:: bash

See :doc:`shortcuts` for keyboard commands...

This page from the `GNOME Display Manager Reference Manual`_ might prove useful
if you want to make the changes permanent.

Multi-Monitor
=============

From `Change primary monitor in Gnome 3`_

Primary
-------

If the laptop screen is blank and you want to make your monitor the primary
display, then list your displays::

  $ xrandr
  Screen 0: minimum 320 x 200, current 3280 x 1080, maximum 32767 x 32767
  LVDS1 connected primary 1360x768+0+312
     1366x768       60.0 +
     1360x768       59.8*    60.0
     1024x768       60.0
     800x600        60.3     56.2
     640x480        59.9
  HDMI1 connected 1920x1080+1360+0
     1920x1080      60.0*m
     ...

In this example, I wanted to set ``HDMI1`` to be my primary display::

  xrandr --output HDMI1 --primary

Resolution
----------

From `How change display resolution settings using xrandr`_

To change the resolution (mode) on a monitor...

List the displays using ``xrandr`` (see example above).

Then set the output for the screen e.g::

  xrandr --output LVDS1 --mode 1360x768


.. _`Change primary monitor in Gnome 3`: http://blog.nachtarbeiter.net/2012/01/09/change-primary-monitor-in-gnome-3/
.. _`GNOME Display Manager Reference Manual`: https://help.gnome.org/admin/gdm/stable/configuration.html.en
.. _`How change display resolution settings using xrandr`: http://www.ubuntugeek.com/how-change-display-resolution-settings-using-xrandr.html
