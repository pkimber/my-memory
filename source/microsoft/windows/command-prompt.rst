Command Prompt
**************

Links
=====

- DOS - Batch Files, :doc:`../dos/batch-files`.

Delete
======

To delete the folder ``my-folder`` and all the files inside it:

::

  rd my-folder /s

To delete the folder without confirmation, add the ``/q`` (quiet) parameter.

Explorer
========

To add the option to *Open Command Window here* to the context menu, download
and install ``CmdHerePowertoySetup.exe`` from
http://www.microsoft.com/windowsxp/downloads/powertoys/xppowertoys.mspx

Fonts
=====

`How to change the font used by Windows Command Prompt`_

Run ``regedit``, find the key,

::

  HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Console\TrueTypeFont

...and add the key, ``00``, with a new *String Value* of
``Bitstream Vera Sans Mono``:

::

  ../../images/howto/windows/command-prompt-bitstream-vera-sans-mono.gif

...to add more fonts, add another ``0`` to the key each time e.g. ``000``,
``Consolas``...

**Note:**

- You will need to re-boot the workstation before you can use the new font.
- For details on how to download the *Consolas* font, :doc:`fonts`.



.. _`How to change the font used by Windows Command Prompt`: http://phatness.com/node/1643

