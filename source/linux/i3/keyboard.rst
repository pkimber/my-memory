Keyboard
********

From `Turn CapsLock into Control`_::

  vim ~/.Xmodmap
  clear lock
  clear control
  keycode 66 = Control_L
  add control = Control_L Control_R

*Source* the file::

  xmodmap ~/.Xmodmap


.. _`Turn CapsLock into Control`: https://wiki.archlinux.org/index.php/xmodmap#Turn_CapsLock_into_Control
