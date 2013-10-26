ack
***

Links
=====

http://betterthangrep.com/ ack is a tool like grep, aimed at programmers with
large trees of source code.

From the ``man`` pages:

Why is it called ack if it's called ack-grep?

  The name of the program is "ack".  Some packagers have called it "ack-grep"
  when creating packages because there's already a package out there called
  "ack" that has nothing to do with this ack.

  I suggest you make a symlink named ack that points to ack-grep because one of
  the crucial benefits of ack is having a name that's so short and simple to
  type.

  To do that, run: ``ln -s /usr/bin/ack-grep /usr/bin/ack``

Install
=======

Ubuntu
------

It is probably a good idea to remove ``ack`` (Kanji code checker) from your
system:

::

  sudo apt-get remove ack

Note: Create a new bash shell after removing this application

::

  sudo apt-get install ack-grep

Configuration
=============

We want to use ``ack`` rather than ``ack-grep`` as it is shorter to type - so
either create a symlink (as suggested above), or create a bash script e.g.

::

  vim ~/opt/ack

  #!/bin/sh
  ack-grep "$@"

  chmod +x ~/opt/ack

The contents of my ``~/.ackrc`` file are as follows:

::

  # Create txt file type:
  --type-set=rst=.rst
  # SLS
  --type-set=salt=.sls,.conf,.ini
  # CSS
  --type-add=css=.less
  # Ruby
  --type-add=ruby=.haml,.rake

Usage
=====

::

  ack query
  ack --type python query
  ack --type xml query
  ack --type xml --type python query

Note: The ``ack-grep`` command can be used instead of ``ack`` if you haven't
set-up a symbolic link or script.

Shortcut
========

Add the following to ``~/.bashrc``:

::

  alias grepp='ack-grep --type python'
  alias grepx='ack-grep --type xml'
