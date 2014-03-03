Regular Expressions
*******************

.. highlight:: python

Links
=====

- http://www.amk.ca/python/howto/regex/

Note
====

- Always use python raw strings (``r``) when passing a string to ``compile``.
- Probably better to use
  `Verbose Regular Expressions`_ whenever possible.

Sample
======

::

  >>> import re
  >>> p = re.compile(r'[a-z]+')
  >>> m = p.match( 'tempo')
  >>> m.group(), m.start(), m.end()
  ('tempo', 0, 5)
  >>> print p.match('tempo')
  <MatchObject object 1>
  >>> print p.match('')
  None

Extract (positive) numbers from a string
----------------------------------------

From `Extract numbers from a string`_::

  >>> import re
  >>> re.findall(r'\d+', 'hello 42 I\'m a 32 string 30')
  ['42', '32', '30']


.. _`Verbose Regular Expressions`: http://www.diveintopython.org/regular_expressions/verbose.html
.. _`Extract numbers from a string`: http://stackoverflow.com/questions/4289331/python-extract-numbers-from-a-string
