Keyboard
********

.. _linux-keyboard-caps-lock-control:

Map Caps Lock to Control
========================

Two versions...

1. From `Map Caps Lock to Control in Linux`_

Add the following to ``~/.xmodmap``::

  # vim ~/.Xmodmap
  remove Lock = Caps_Lock
  keysym Caps_Lock = Control_L
  add Control = Control_L

*Source* the file::

  xmodmap ~/.xmodmap

2. From `Turn CapsLock into Control`_

Add the following to ``~/.xmodmap``::

  # vim ~/.Xmodmap
  clear lock
  clear control
  keycode 66 = Control_L
  add control = Control_L Control_R

*Source* the file::

  xmodmap ~/.Xmodmap

Touchpad
========

From `Disable touchpad`...::

  xinput list
  # SynPS/2 Synaptics TouchPad  id=11  [slave  pointer  (2)]
  xinput disable "SynPS/2 Synaptics TouchPad"


.. _`Disable touchpad`: https://wiki.archlinux.org/index.php/Libinput#Disable_touchpad
.. _`Turn CapsLock into Control`: https://wiki.archlinux.org/index.php/xmodmap#Turn_CapsLock_into_Control
.. _`Map Caps Lock to Control in Linux`: https://unix.stackexchange.com/questions/114022/map-caps-lock-to-control-in-linux-mint
