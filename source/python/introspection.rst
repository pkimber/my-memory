Introspection
*************

.. highlight:: python

dir
===

The dir() function is probably the most well-known of all of Python's
introspection mechanisms. It returns a sorted list of attribute names for any
object passed to it.  If no object is specified, ``dir()`` returns the names
in the current scope.

::

  import urllib2
  result = urllib2.urlopen('http://server/admin/articles/testinsert.cfm')

  dir(result)
  ['__doc__', '__init__', '__iter__', '__module__', '__repr__', 'close', 'code', '
  fileno', 'fp', 'geturl', 'headers', 'info', 'msg', 'next', 'read', 'readline', '
  readlines', 'url']

For an 'improved' ``dir``, try https://github.com/inky/see
