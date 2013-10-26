html and xml
************

.. highlight:: python

Libraries
=========

- :doc:`modules/beautiful-soup`
- `html5lib is the new, better BeautifulSoup`_
- `pyquery`: a jQuery-like library for python.
- http://github.com/jsocol/bleach An easy, HTML5, whitelisting HTML sanitizer.

  - `Jacob Kaplan-Moss - Untrusted users and HTML`_

Pretty Print
============

- `Lightweight DOM implementation`_
- `DOM Objects`_

::

  >>> from xml.dom.minidom import parseString
  >>> s = parseString('<myxml>Some data<empty/> some more data</myxml>')
  >>> s.toprettyxml('  ')
  u'<?xml version="1.0" ?>\n<myxml>\n  Some data\n  <empty/>\n   some more data\n</myxml>\n'

Quote/Unquote
=============

::

  >>> import urllib
  >>> t = '<?xml version="1.0" encoding="utf-8"?>'
  >>> urllib.quote(t)
  '%3C%3Fxml%20version%3D%221.0%22%20encoding%3D%22utf-8%22%3F%3E'
  >>> urllib.unquote(t)
  '<?xml version="1.0" encoding="utf-8"?>'

::

  >>> import urllib
  >>> urllib.quote_plus('Vale of Glamorgan & Cardiff')
  'Vale+of+Glamorgan+%26+Cardiff'


.. _`DOM Objects`: http://docs.python.org/lib/dom-objects.html
.. _`html5lib is the new, better BeautifulSoup`: http://twitter.com/#!/raymondh/status/1746646673129472
.. _`Jacob Kaplan-Moss - Untrusted users and HTML`: http://jacobian.org/writing/untrusted-users-and-html/
.. _`Lightweight DOM implementation`: http://docs.python.org/lib/module-xml.dom.minidom.html
.. _`pyquery`: a jquery-like library for python
