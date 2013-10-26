empathy
*******

Issues
======

Previous converation window grows
---------------------------------

Change the theme to *Classic* or *Ubuntu*.

Network error when trying hotmail.com
-------------------------------------

Cannot connect to ``hotmail.co.uk``.  Checking *Help*, *Debug*:

::

  KeyError: "Can't register the object-path handler for
    '/org/freedesktop/Telepathy/Connection/butterfly/msn/me_40hotmail_2eco_2euk':
    there is already a handler"

From `Bug #545751`_, run the following commands:

::

  sudo killall telepathy-butterfly
  sudo dpkg --purge telepathy-butterfly
  sudo apt-get install telepathy-haze
  sudo apt-get install telepathy-butterfly


.. _`Bug #545751`: https://bugs.launchpad.net/ubuntu/+source/empathy/+bug/545751
