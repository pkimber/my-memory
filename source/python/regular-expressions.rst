Regular Expressions
*******************

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


.. _`Verbose Regular Expressions`: http://www.diveintopython.org/regular_expressions/verbose.html

