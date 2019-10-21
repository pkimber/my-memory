i3 Window Manager
*****************

Startup:

.. code-block:: bash

  xmodmap ~/.Xmodmap
  xinput disable "SynPS/2 Synaptics TouchPad"

Screens:

.. code-block:: bash

  xrandr --output eDP-1 --auto --output DP-1 --auto --left-of eDP-1

Sound:

.. code-block:: bash

  alsamixer
  # toggle sound
  amixer -q -D pulse sset Master toggle

If wireless networking no longer works after resuming from suspend:

.. code-block:: bash

  sudo systemctl restart network-manager.service

WiFi Connections

.. code-block:: bash

  # I can't get this to work.  I also tried ``apt install wicd``, but that
  # didn't work!
  wicd-curses

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
