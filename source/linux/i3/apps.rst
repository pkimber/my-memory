i3 Apps
*******

nnn
===

::

  apt install nnn

st
==

::

  mkdir ~/dev/src/
  git clone https://git.suckless.org/st

  sudo -i
  apt install libx11-dev libxft-dev

::

  sudo -i
  cd /home/patrick/dev/src/st/
  make clean install

Scrollback
----------

.. note:: This does not seem to work.

Download ``st-scrollback-20190122-3be4cf1.diff`` from
https://st.suckless.org/patches/scrollback/

Apply the patch, then ``make clean install``::

  patch -p1 < st-scrollback-20190122-3be4cf1.diff
