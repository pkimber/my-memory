Keyboard and Mouse
******************

Keyboard
========

:doc:`shortcuts`

Run *Tweaks* (``apt install gnome-tweaks``):

- *Keyboard and Mouse*
- *Additional Layout Options*
- *Ctrl position* to *Caps Lock as Ctrl*
- *Caps Lock behaviour* to *Caps is also a Ctrl*
  (or maybe *Make Caps Lock an additional Ctrl*)

Keyboard Issues
===============

Caps Lock
---------

- :doc:`../../linux/i3/keyboard`
- :doc:`../../linux/distro/ubuntu/keyboard`

Inverted on start-up.

From `Sometimes Caps Lock works inverted`_, I ran::

  setleds -caps
  xmodmap -e "remove lock = Caps_Lock"
  setxkbmap -option

Note: Only the final command didn't throw an error, but the issue was fixed.

UK
--

Losing the UK keyboard layout:

- Settings
- Region and Language
- Input Sources - Add ``English (US)``, remove ``English (US)``.


.. To remap the *Caps Lock* key to *Ctrl*:
..
.. - System Settings
.. - All Settings
.. - Keyboard
.. - *Layout Settings* shortcut in the bottom left of the dialog.
.. - *Options...* button (bottom right of the dialog).
.. - *Caps Lock key behaviour*
.. - Select *Make Caps Lock an additional Control but keep the Caps_Lock keysym*

Mouse
=====

Enable the right click

- Run the *Tweak Tool*
- *Keyboard and Mouse*
- *Mouse Click Emulation*
- Tick *Area*


.. _`Sometimes Caps Lock works inverted`: https://bugs.launchpad.net/ubuntu/+source/linux/+bug/267999
