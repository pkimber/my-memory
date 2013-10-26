ssh
***

Record
======

::

  ssh -l USER HOST | tee -a /path/to/file

``tee`` is a command which displays or pipes the output of a command and copies
it into a file or a variable.

``-a`` option appends the output to the end of file instead of writing over it.

Tunnel
======

In this example, our server is hosting a web site on port 80.  We want to
tunnel the HTTP requests to our local workstation (``localhost``) and browse
to the site on port ``8888``:

::

  ssh -N -L 8888:localhost:80 server

Browse to the site on http://localhost:8888/

Quit
====

`Close a hanging ssh session`_

To quit (exit/terminate) an SSH session:

::

  ~.

For more information, run the help command ``~?``.


.. _`Close a hanging ssh session`: http://www.commandlinefu.com/commands/view/6523/close-a-hanging-ssh-session
