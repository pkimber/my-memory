i3 Window Manager
*****************

Startup
=======

.. code-block:: bash

  xmodmap ~/.Xmodmap
  xinput disable "SynPS/2 Synaptics TouchPad"

Screens
=======

List:

.. code-block:: bash

  xrandr -q

.. code-block:: bash

  xrandr --output eDP-1 --auto --output DP-1 --auto --left-of eDP-1

Duplicate (did not work for me):

.. code-block:: bash

  xrandr --output DP-1 --same-as eDP-1

Sound
=====

.. code-block:: bash

  alsamixer
  # toggle sound
  amixer -q -D pulse sset Master toggle

Networking
==========

If wireless networking no longer works after resuming from suspend:

.. code-block:: bash

  sudo systemctl restart network-manager.service

WiFi Connections

.. code-block:: bash

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
