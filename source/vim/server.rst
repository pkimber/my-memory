Server
******

To open files in an existing instance of VIM, first start vim giving the
instance a server name (in this example, the server name is ``web``):

::

  gvim --servername web

To open files in this instance, just add the ``--remote`` parameter passing in
the name of the file e.g:

::

  gvim --servername web --remote README.rst

To see more options:

::

  gvim -h

