i3 Window Manager
*****************

Startup:

.. code-block:: bash

  xmodmap ~/.Xmodmap
  xinput disable "SynPS/2 Synaptics TouchPad"

If wireless networking no longer works after resuming from suspend:

.. code-block:: bash

  sudo systemctl restart network-manager.service

Sound

.. code-block:: bash

  alsamixer

WiFi Connections

.. code-block:: bash

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
