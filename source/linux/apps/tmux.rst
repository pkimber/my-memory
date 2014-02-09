tmux
****

.. highlight:: bash

Links
=====

- Book: http://pragprog.com/book/bhtmux/tmux
- `Tools I use: Tmux`_
- https://launchpad.net/byobu/

.. _`Tools I use: Tmux`: http://justinlilly.com/dotfiles/tmux.html

Install
=======

::

  sudo apt-get install tmux

Configuration
=============

- Remap the *Caps Lock* key to *Ctrl* :doc:`../gnome/keyboard`

Issues
======

::

  ImportError: No module named virtualenvwrapper.hook_loader
  virtualenvwrapper.sh: There was a problem running the initialization hooks.

For the solution, see :doc:`../../python/virtualenv/issues`.

Usage
=====

To run::

  tmux

Create
------

Create a new sessions with the name ``basic``::

  tmux new -s basic

Create a new session with the name ``second_session`` and detach it from the
terminal::

  tmux new -s second_session -d

Create a new session named ``windows`` and name the first window ``shell``::

  tmux new -s windows -n shell

List
----

::

  tmux ls

Attach
------

::

  tmux attach -t second_session

See ``detach`` below...

Kill
----

::

  tmux kill-session -t second_session

Shortcuts
=========

**using my own configuration file, the following shortcuts will work**...

====================  =========================================================
*ctrl a*, ?           help

*ctrl a*, c           create a new session
*ctrl a*, d           detach from a session
*ctrl a*, &           close a session (or ``exit``)

*ctrl a*, *ctrl a*    switch to previous session (last window)
*ctrl a*, *number*    switch to session number
*ctrl a*, w           list open windows
*ctrl a*, f           find a window by name

*ctrl a*, %           split screen vertically
*ctrl a*, "           split screen horizontally
*ctrl a*, *spacebar*  cycle through standard pane layouts
*ctrl a*, q           momentarily display pane numbers

*ctrl a*, o           switch to another pane
*ctrl a*, *arrow*     switch to another pane using the arrow keys
*ctrl a*, x           kill pane

*ctrl a*, *,*         rename a session

*ctrl a*, *:*         command mode
====================  =========================================================

Note: On a standard configuration, *ctrl a* is *ctrl b*...

Commands
--------

Switch to command mode first *ctrl a*, *:*

::

  source-file ~/.tmux.conf

Create
------

::

  new-window -n console

... and start a process:

::

  new-window -n processes "top"

Pairing
=======

Config
------

On the server where you want to use tmux with other users:

::

  sudo addgroup tmux
  sudo mkdir /var/tmux
  sudo chgrp tmux /var/tmux
  sudo chmod g+ws /var/tmux

For each user (in this example, the user is called ``ted``:

::

  sudo usermod -aG tmux ted

Note: Make sure each user who does this, logs out, and back in, before
continuing...

Usage
-----

One user creates the session:

::

  tmux -S /var/tmux/pair

Other users in the group can attach to the session:

::

  tmux -S /var/tmux/pair attach
