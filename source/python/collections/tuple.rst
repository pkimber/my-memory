Tuple
*****

Initialise
----------

::

  >>> empty = ()
  >>> singleton = 'hello',    # <-- note trailing comma
  >>> names = ('peter', 'alison', 'barry', 'martin')

Append (creates a new tuple)
----------------------------

::

  >>> d = (1, 2, 3, 4)
  >>> e = 5,
  >>> d = d + e
  >>> d
  (1, 2, 3, 4, 5)

Get
---

::

  >>> names = 'peter', 'alison', 'barry', 'martin',
  >>> names
  ('peter', 'alison', 'barry', 'martin')
  >>> names[1]
  'alison'

Convert
-------

List to tuple:

::

  >>> sports = ['football', 'cricket']
  >>> tuple(sports)
  ('football', 'cricket')

Tuple to list:

::

  In [1]: sports = ('football', 'cricket')

  In [2]: list(sports)
  Out[2]: ['football', 'cricket']

zip
===

- `Built-in Functions`_

returns a list of tuples, where the *i*-th tuple contains the *i*-th element from
each of the argument sequences or iterables.

Sample
------

::

  >>> keys = (10, 20, 30, 40)
  >>> values = ('Ten', 'Twenty', 'Thirty', 'Forty')
  >>> d = zip(keys, values)
  >>> d
  [(10, 'Ten'), (20, 'Twenty'), (30, 'Thirty'), (40, 'Forty')]
  >>> d = dict(zip(keys, values))
  >>> d
  {10: 'Ten', 20: 'Twenty', 30: 'Thirty', 40: 'Forty'}


.. _`Built-in Functions`: http://docs.python.org/lib/built-in-funcs.html

