Keyboard
********

:doc:`shortcuts`

Run the *Tweak Tool*

- *Keyboard and Mouse*
- *Additional Layout Options*
- *Ctrl key position* to *Caps Lock as Ctrl*
- *Caps Lock key behaviour* to *Caps is also a Ctrl*

Issues
======

Caps Lock
---------

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


.. _`Sometimes Caps Lock works inverted`: https://bugs.launchpad.net/ubuntu/+source/linux/+bug/267999
