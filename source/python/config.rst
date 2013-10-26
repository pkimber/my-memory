Config (Properties)
*******************

Links
=====

`ConfigParser — Configuration file parser`_

- `PyMOTW: ConfigParser`_
- `sample-configparser.py`_

Sample
======

::

  from ConfigParser import ConfigParser
  parser = ConfigParser()
  parser.read('database.properties')
  parser.get('letherens', 'server')
  >>> 'sql.hatherleigh'

Note: The sample is reading this ``database.properties`` file:

::

  [letherens]
  server=sql.hatherleigh
  port=8000

**Note**: Don't miss the sample in the *links* (see above).


.. _`ConfigParser — Configuration file parser`: http://docs.python.org/library/configparser.html
.. _`PyMOTW: ConfigParser`: http://blog.doughellmann.com/2007/04/pymotw-configparser.html
.. _`sample-configparser.py`: http://toybox/hg/sample/file/tip/python/sample-configparser.py

