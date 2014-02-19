Output
******

% Formatting
============

- `String Formatting Operations`_
- `Python % formating`_

::

  >>> f = 12.345
  >>> s = 'patrick'
  >>> print '%s owes %.2f' % (s, f)
  patrick owes 12.34

Dictionary
----------

Using a dictionary::

  >>> t = {'b': 'banana', 'a': 'apple'}
  >>> print "%(a)s %(b)s" % t
  apple banana

Justify
-------

::

  >>> print '[%-30s]' % 'southampton'
  [southampton                   ]

Width
-----

Maximum (``.``)::

  >>> print '[%-.5s]' % 'southampton'
  [south]

Minimum::

  >>> print '[%30s]' % 'southampton'
  [                   southampton]

pprint
======

- `pprint -- Data pretty printer`_
- `PyMOTW: pprint`_
  The pprint module includes a *pretty printer* for producing aesthetically
  pleasing representations of your data structures.


.. _`pprint -- Data pretty printer`: http://docs.python.org/lib/module-pprint.html
.. _`PyMOTW: pprint`: http://www.oreillynet.com/onlamp/blog/2007/11/pymotw_pprint.html
.. _`Python % formating`: http://snippets.dzone.com/posts/show/1701
.. _`String Formatting Operations`: http://docs.python.org/lib/typesseq-strings.html
