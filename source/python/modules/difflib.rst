difflib
*******

.. highlight:: python

http://pydoc.org/2.5.1/difflib.html

Sample
======

A good sample can be found in the python distribution,
``Tools/Scripts/diff.py``::

  \Python25\Tools\Scripts\diff.py file1.txt file2.txt -m > temp.html

Differ
------

::

  import sys
  from difflib import Differ

  if len(sys.argv) < 3:
      print 'Compare two files...'
      print sys.argv[0] + ' <filename1> <filename2>'
  else:
      name1 = sys.argv[1]
      name2 = sys.argv[2]

      f = open(name1)
      new = f.read().splitlines()

      f = open(name2)
      old = f.read().splitlines()

      result = list(Differ().compare(old, new))
      for line in result:
          print line
