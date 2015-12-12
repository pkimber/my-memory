Screen
******

Allows you to control multiple screens on a remote Linux computer.  Like
terminal server for Linux consoles.

Links
=====

- `The GNU Screen Mini Tutorial`_
- `Stayin' alive with Screen`_
- :doc:`apps/tmux`

Setup
=====

Copy the .screenrc_ configuration file to your home folder to bind *F11* and
*F12* to the next and previous window commands.

Usage
=====

::

  screen

List
====

To list screens::

  screen -ls

Attach
======

To attach to a screen, do an "-ls" to get the name then::

  screen -r "name"

e.g::

  screen -r 31619.ttyp2.gigan

Detach
======

See *Shortcuts* below...

Reattach
========

Attach  here and now. In detail this means: If a session is running, then
reattach::

  screen -D -R

Scrollback
==========

`Working with the Scrollback Buffer`_

Edit your ``~/.screenrc`` file and add the following::

  defscrollback 5000

This will give you 5000 lines of scrollback.

To enter scrollback mode: *Ctrl* *a*, *[*.  Note: The screen will say
``Copy mode``.
Use the normal vim commands to move around the screen.

To copy:

- move to the start of the text and press *spacebar*.
- move to the end and press *spacebar*.
- To paste the text: *Ctrl* *a*, *]*.

Press *Escape* to exit this mode.

Shortcuts
=========

================================  ==============
To create a new screen            *Ctrl-a* **c**
To get to the next screen         *Ctrl-a* **n**
To detach from a screen           *Ctrl-a* **d**
Split horizontally into regions   *Ctrl-a* **S**
Split vertically into regions     *Ctrl-a* ``|``
Then move to the region and
*create a new screen*
Move to next region               *Ctrl-a* *Tab*
================================  ==============

Issues
======

If you have problems with the delete key, put the following line in your
``.bashrc``::

  alias screen=TERM=screen screen

27/09/2011, Removed a couple of control characters from around
``TERM=screen screen`` above.  Not sure if this is correct, or not.

Execute the following command to re-source your ``.bashrc file``:
``. ~/.bashrc``.


.. _`The GNU Screen Mini Tutorial`: http://lolcodrz.com/blog/2009/01/gnu-screen-mini-tutorial/
.. _`Stayin' alive with Screen`: http://www.ibm.com/developerworks/aix/library/au-gnu_screen/
.. _.screenrc: ../../misc/howto/linux/.screenrc
.. _`Working with the Scrollback Buffer`: http://www.samsarin.com/blog/2007/03/11/gnu-screen-working-with-the-scrollback-buffer/
