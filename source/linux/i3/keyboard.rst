Keyboard
********

From `Turn CapsLock into Control`_::

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
