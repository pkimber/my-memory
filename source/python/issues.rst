Issues
******

id
==

Do *not* use the variable name ``id``.  It is the name of a python built
in function which returns the address of an object.

For details see `'id' is a bad variable name in Python`_

module object has no attribute
==============================

I have bumped into this error when I name a file the same as some external class
I am trying to import e.g. script file name ``csv.py`` and ``import csv`` at
the top of the script.

::

  'module' object has no attribute

Note: Make sure you delete the compiled ``.pyc`` file as well!

UnboundLocalError
=================

`Python Functions: Assignments And Scope`_

Quite a nasty one this... here is the code which threw the exception:

::

  cache_clear = False

  class TestRunner:
      def __call__(self):
          if cache_clear:
              # do something...
              cache_clear = True

The issue here is to do with the python interpreter deciding if
``cache_clear`` is a local or global inside the ``__call__`` method.

To solve the problem, we tell the method that ``cache_clear`` is a global
variable by using the ``global`` statement to list the (global) variables:

::

  cache_clear = False

  class TestRunner:
      def __call__(self):
          global cache_clear
          if cache_clear:
              # do something...
              cache_clear = True

SyntaxError: Non-ASCII character in file, but no encoding declared
==================================================================

The source code contained the pound character:

::

  SyntaxError: Non-ASCII character in file 'gateway.py', but no encoding declared;
  see http://www.python.org/peps/pep-0263.html for details

To solve the issue, I put the following at the top of the source file:

::

  # -*- coding: utf-8 -*-

`Source Code Encoding`_

ValueError: bad marshal data (unknown type code)
================================================

When running ``py.test``...

This is something to do with ``.pyc`` files.  I tried removing them::

  find . -name '*.pyc' -delete

... but this did not solve the problem.

I had a module included from a requirements file::

  -e ../base

I removed the ``.pyc`` files from this app, and all was OK once more.

Might be worth removing ``__pycache__`` folders as well if removing the
``pyc`` doesn't help.


.. _`'id' is a bad variable name in Python`: http://stackoverflow.com/questions/77552/id-is-a-bad-variable-name-in-python
.. _`Python Functions: Assignments And Scope`: http://paddy3118.blogspot.com/2006/07/python-functions-assignments-and-scope.html
.. _`Source Code Encoding`: http://docs.python.org/tutorial/interpreter.html#source-code-encoding
