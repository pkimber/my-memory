Command Line Parameters
***********************

Module
======

To load and run a python module on the path::

  python -m my_script

Sample
======

optparse
--------

optparse_

Simple
------

::

  import sys

  if len(sys.argv) < 2:
      print 'Error'
  else:
      s = sys.argv[1]

argparse
========

http://code.google.com/p/argparse/


.. _optparse: modules/optparse.html
