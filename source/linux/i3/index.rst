i3 Window Manager
*****************

.. highlight:: bash

Startup
=======

::

  xmodmap ~/.Xmodmap
  xinput disable "SynPS/2 Synaptics TouchPad"

Screens
=======

List::

  xrandr -q

Example::

  xrandr --output eDP-1 --auto --output DP-1 --auto --left-of eDP-1

Duplicate (James's ACER CB270HU Monitor)::

  xrandr --output DP-1 --same-as eDP-1 --mode 1920x1080

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
