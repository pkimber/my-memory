unicode
*******

.. highlight:: python

Links
=====

- `Unicode In Python, Completely Demystified`_

Decode
======

Decode to ``type`` ``unicode`` ASAP (the above article advises to decode
early):

::

  def to_unicode_or_bust(obj, encoding='utf-8'):
      if isinstance(obj, basestring):
          if not isinstance(obj, unicode):
              obj = unicode(obj, encoding)
      return obj

Encode
======

Encode to ``type`` ``str`` when you write to disk or print (the above
article, advises to *encode late*):

::

  >>> f = open('/tmp/ivan_out.txt','w')
  >>> f.write(ivan_uni.encode('utf-8'))
  >>> f.close()

Script
======

Add the following to the first or second line of your script
(http://www.python.org/dev/peps/pep-0263/):

::

  # -*- coding: utf-8 -*-


.. _`Unicode In Python, Completely Demystified`: http://farmdev.com/talks/unicode/
