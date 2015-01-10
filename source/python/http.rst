http
****

.. highlight:: python

Links
=====

- `urllib Examples`_
- `A comprehensive HTTP client library`_
- Don't forget urllib2_.
- `Classes for Working with URIs`_
- `Requests: Python HTTP Module (That Doesn't Suck)`_:
  https://github.com/kennethreitz/requests
- `URLObject`_ is a utility class for manipulating URLs.

Sample
======

`PyMOTW: BaseHTTPServer`_

A simple HTTP Server: `simple_http_server.py`_::

  cd ~/your/folder/
  python -m SimpleHTTPServer 8080

Download
========

::

  from urllib import urlretrieve
  urllib.urlretrieve(image_url, file_name)

GET
===

Here is an example session that uses the *GET* method to retrieve a URL
containing parameters::

  import urllib
  params = urllib.urlencode({'spam': 1, 'eggs': 2, 'bacon': 0})
  f = urllib.urlopen("http://www.musi-cal.com/cgi-bin/query?%s" % params)
  print f.read()

Parse
=====

For parsing a URL, see :doc:`url`

POST
====

The following example uses the *POST* method instead::

  import urllib
  params = urllib.urlencode({'spam': 1, 'eggs': 2, 'bacon': 0})
  f = urllib.urlopen("http://www.musi-cal.com/cgi-bin/query", params)
  print f.read()

To post specific content type e.g. for SOLR XML requests::

  url = 'http://localhost:8080/solr/'
  xml = '<delete><id>%s</id></delete>' % id

  req = urllib2.Request(url, xml)
  req.add_header("Content-Type", "text/xml")
  f = urllib2.urlopen(req)
  response = f.read()
  f.close()

Quote/Unquote
=============

See :doc:`html-xml`, *Quote/Unquote*...

Exception
=========

::

  try:
      return urllib2.urlopen(url, urllib.urlencode(params))
  except urllib2.HTTPError, e:
      self.display(e, True)
      raise


.. _`A comprehensive HTTP client library`: http://bitworking.org/projects/httplib2/
.. _`Classes for Working with URIs`: http://aspn.activestate.com/ASPN/Cookbook/Python/Recipe/473864
.. _`PyMOTW: BaseHTTPServer`: http://www.doughellmann.com/PyMOTW/BaseHTTPServer/
.. _`Requests: Python HTTP Module (That Doesn't Suck)`: http://kennethreitz.com/blog/introducing-requests/
.. _`simple_http_server.py`: http://toybox/hg/env/file/tip/lib/python/pk/http/simple_http_server.py
.. _`urllib Examples`: http://docs.python.org/lib/node483.html
.. _`URLObject`: http://zacharyvoase.github.com/urlobject/
.. _urllib2: http://docs.python.org/lib/module-urllib2.html
