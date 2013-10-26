Standard input, output, and error
*********************************

Links
=====

- `Dive into Python`_
- `Python - Redirect or Turn Off STDOUT and STDERR`_

``stdin``
=========

``stdin`` is a file-like object with a ``read`` method:

::

  def openAnything(source):
      if source == "-":
          import sys
          return sys.stdin

      # try to open with urllib (if source is http, ftp, or file URL)
      import urllib
      try:

``stdout``
==========

``stdout`` is a file-like object; calling its ``write`` function will
print out whatever string you give it:

::

  import sys
  sys.stdout.write('Dive in')


.. _`Dive into Python`: http://www.diveintopython.org/scripts_and_streams/stdin_stdout_stderr.html
.. _`Python - Redirect or Turn Off STDOUT and STDERR`: http://coreygoldberg.blogspot.com/2009/05/python-redirect-or-turn-off-stdout-and.html
