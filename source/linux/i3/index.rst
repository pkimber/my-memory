i3 Window Manager
*****************

.. highlight:: bash

Startup
=======

::

  xmodmap ~/.Xmodmap
  xinput disable "SynPS/2 Synaptics TouchPad"

The contents of ``~/.Xmodmap``::

  clear lock
  clear control
  keycode 66 = Control_L
  add control = Control_L Control_R

Screens
=======

List::

  xrandr -q

Example::

  # home (left and right)
  xrandr --output HDMI-1 --left-of eDP-1

  # duplicate (James's ACER CB270HU Monitor)::
  xrandr --output DP-1 --same-as eDP-1 --mode 1920x1080

  xrandr --output eDP-1 --auto --output DP-1 --auto --left-of eDP-1

Refresh (auto-detect)::

  xrandr --auto

Sound
=====

::

  alsamixer
  # toggle sound
  amixer -q -D pulse sset Master toggle

List devices::

  aplay -l

Networking
==========

If wireless networking no longer works after resuming from suspend::

  sudo systemctl restart network-manager.service

WiFi Connections::

  nmtui

Contents

.. toctree::
   :maxdepth: 1

   apps
   blocks
   install
   keyboard
   monitor
   network
   power
   sound
