Debugger
********

.. highlight:: python

.. tip:: Check out ``pdbpp``.  See :doc:`../pdb` for more information.

Debug
=====

From https://gist.github.com/1125832...

Using IPython (from version 0.11) we can replace the standard ``pdb`` import:

Copy the following script::

  ../misc/ipdb.py

to a folder within your project e.g::

  cp ipdb.py ./common/

In your code, create the following function::

  def pdb():
      from common.ipdb import set_trace
      set_trace()

Put the following function call where you want to start the debugger::

  pdb()

Embed
=====

Note: To invoke the shell anywhere in code::

  import IPython
  IPython.embed()

*Ctrl D* on linux to continue (*Ctrl Z* on Windows)
