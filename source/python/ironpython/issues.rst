Issues
******

glob
====

Cannot ``import glob`` (and probably other pure python modules from the
standard library):

::

  >>> import glob
  Traceback (most recent call last):
    File , line 0, in <stdin>##36
    File , line 0, in __import__##4
  ImportError: No module named glob

To solve this issue, see doc:`ironpython`...

