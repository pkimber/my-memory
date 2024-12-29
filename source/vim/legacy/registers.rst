Clipboard (registers)
*********************

Links
=====

- `stackoverflow, How to use vim registers?`_

Learning
========

Basic
-----

Registers in Vim let you run actions or commands on text stored within them.
To access a register, you type ``"a`` before a command, where ``a`` is the
name of a register.  If you want to copy the current line into register ``k``,
you can type:

::

  "kyy

You can then move through the document and paste it elsewhere using:

::

  "kp

To list current registers:

::

  :reg

Special
-------

======  ======================================================================
``"``   Default register.  Is populated with *yanked* and *deleted* text.
``0``   Register ``0`` is populated with *yanked* text.
``"+``  (or ``"*``) the contents of the system clipboard.
``"/``  last search command
``":``  last command.
``"#``  the current file-name.
======  ======================================================================

Tips
====

Copy/Delete/Replace
-------------------

To copy some text, delete something and replace it with the copied text:

- yank the text you want to copy.  This text is saved in the ``"`` and ``0``
  registers (see *Special* above).
- delete the text you want to replace.  This text is saved in the ``"``
  register.
- paste the yanked text with ``"0p``


.. _`stackoverflow, How to use vim registers?`: http://stackoverflow.com/questions/1497958/how-to-use-vim-registers
