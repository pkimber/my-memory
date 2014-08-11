Methods (and functions)
***********************

.. highlight:: python

**For string formatting, check out the Cookbook_**

Links
=====

- http://docs.python.org/lib/string-methods.html

character
=========

Returns a one-character string whose ASCII code is the parameter (this is the
inverse of ``ord``)::

  >>> chr(65)
  'A'

Note: To create Unicode strings, use ``unichr``.

endswith
========

See notes on ``startswith`` below...

find
====

Note: *Don't forget* ``in``...

Return the lowest index in the string where substring sub is found, such that
sub is contained in the range [start, end). Optional arguments start and end
are interpreted as in slice notation. Return -1 if sub is not found::

  if s.find('--') != -1:

::

  find(sub[,start[,end]])

format
======

New
---

Cookbook_ - Align (replace ``s`` with ``d`` for an integer)::

  In [2]: print '[{:10s}]'.format('pat')
  [pat       ]

  In [4]: print '[{:>10s}]'.format('pat')
  [       pat]

  In [5]: print '[{:^10s}]'.format('pat')
  [   pat    ]

Cookbook_ - Padding::

  '{:.2%}'.format(vat_rate)

  In [1]: 'invoice-{:06d}.pdf'.format(12)
  Out[1]: 'invoice-000012.pdf'

Old
---

`String Formatting Operations`_

::

  >>> print "Today's stock price: %.2f" % 50.4625
  50.46
  >>> print '[%10s]' % 'Pat'
  [       Pat]
  >>> print '[%-10s]' % 'Pat'
  [Pat       ]
  >>> print '[%06i]' % 3
  [000003]

**Note**: Do **NOT** use a ``list`` for a string formatting operation.  It will
not work!

is
==

isdigit
-------

``isdigit`` returns ``true`` if all characters in ``s`` are digit
characters:

::

  s.isdigit()

isinstance (type)
=================

To check if an object is a string:

::

  if isinstance(value, basestring):

Note: Using this method probably indicates a problem with the design of your
code!!

join
====

::

  >>> name = ('Patrick', 'Gerald', 'Kimber')
  >>> import string
  >>> string.join(name)
  'Patrick Gerald Kimber'

Note: Looks like the above function is different to this one which doesn't take
any parameters:

::

  ''.join(['abc', 'def'])

For this function, we can join multiple data types by converting them to
strings using ``map``:

::

  >>> ','.join(map(str, ('a', 'b', 'c', 99)))
  'a,b,c,99'

lower
=====

::

  s = name.lower()

Padding
=======

Justify:

::

  >>> 'and'.ljust(10) + 'the'.ljust(10) + ']'
  'and       the       ]'

  >>> '[' + 'and'.rjust(10) + ']'
  '[       and]'

  >>> '[' + 'and'.rjust(10, '*') + ']'
  '[*******and]'

Note:

- Does not truncate the string if it is longer.
- jython 2.1 does not accept the second parameter (the padding character).

partition
=========

Split the string at the first occurrence of ``sep``, and return a 3-tuple
containing the part before the separator, the separator itself, and the part
after the separator.  If the separator is not found, return a 3-tuple
containing the string itself, followed by two empty strings:

::

  >>> ('http://www.python.org').partition('://')
  ('http', '://', 'www.python.org')

::

  >>> y
  'parent:'
  >>> x = y.partition(":")[2]
  >>> x
  "

**Note**:

- New in version 2.5.
- ``rpartition(sep)`` also returns a 3-tuple but starts searching from the end
  of the string; the "``r``" stands for *reverse*.

replace
=======

::

  >>> 'alison'.replace('a', 'x')
  'xlison'

Slicing
=======

::

  s[0:30]

Title
=====

::

  >>> "hello world".title()
  'Hello World'

Trim Strip
==========

::

  >>> '   spacious   '.strip()
      'spacious'

replace
=======

Return a copy of the string with all occurrences of substring old replaced
by new.  If the optional third argument ``count`` is given, only the first
count occurrences are replaced::

  >>> print '***'.replace('*', '+++ ')
  +++ +++ +++

split
=====

::

  >>> '1 2 3'.split()
  ['1', '2', '3']
  >>> 'a, b, c'.split(',')
  ['a', ' b', ' c']

Note:

- See notes on ``partition`` (above) and ``splitlines`` (below).

- If the separator is not specified or is ``None``, runs of consecutive
  whitespace are regarded as a single separator.

splitlines
==========

Return a list of the lines in the string, breaking at line boundaries.  Line
breaks are not included in the resulting list unless ``keepends`` is given
and true::

  result = message.splitlines()

startswith
==========

::

  if s.startswith('y'):
      pass

Note: Starting with version 2.5, the ``startswith()`` and ``endswith()``
methods of string types now accept tuples of strings to check for::

  return filename.endswith(('.gif', '.jpg', '.tiff'))


.. _Cookbook: http://mkaz.com/2012/10/10/python-string-format/
.. _`String Formatting Operations`: http://docs.python.org/library/stdtypes.html#string-formatting
