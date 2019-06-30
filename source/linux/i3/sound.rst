Sound
*****

.. highlight:: bash

``pa-mixer-mk3``
================

.. note:: Not sure if this is useful...

Install::

  cd ~/dev/src/
  git clone  git@github.com:mk-fg/pulseaudio-mixer-cli.git
  cd ~/dev/src/pulseaudio-mixer-cli/
  python3 -m venv venv-pa
  source venv-pa/bin/activate.fish
  pip install pulsectl

Run::

  source venv-pa/bin/activate.fish
  python3 pa-mixer-mk3.py

``pavucontrol``
===============

.. note:: Not sure if this is useful...

::

  apt install pavucontrol

::

  pavucontrol
