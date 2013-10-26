source
******

``.`` (source or dot operator)

Syntax
======

::

  . filename [arguments]

::

  source filename [arguments]

Read and execute commands from the filename argument in the current shell
context.

If filename does not contain a slash, the ``PATH`` variable is used to find
filename.  The current directory is searched if filename is not found in
``$PATH``.

If any arguments are supplied, they become the positional parameters when
filename is executed. Otherwise the positional parameters are unchanged.

The return status is the exit status of the last command executed, or zero if no
commands are executed.  If filename is not found, or cannot be read, the return
status is non-zero.

A period ``.`` is a synonym for ``source``.

