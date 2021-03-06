Dictionary
**********

.. highlight:: python

Links
=====

- `python - Sorting Mini-HOW TO`_

Links
=====

- `Simple but handy "collector of a bunch of named stuff" class`_

Initialise
==========

::

  results = {}

  results = {'a' : 1, 'b' : 2, 'c' : 3}

  params = dict(name='Alison', post_code='EX2')

**Note**: See ``zip`` in :doc:`tuple`...

Alternatively, use ``setdefault``.  This class method is similar to ``get()``,
but will set ``dict[key]=default`` if ``key`` is not already in ``dict``::

  In [1]: dict = {'Name': 'Zara', 'Age': 7}
  In [2]: print "Value : %s" %  dict.setdefault('Age', 99)
  Value : 7

  In [3]: print "Value : %s" %  dict.setdefault('Colour', 'Green')
  Value : Green

  In [4]: dict
  Out[4]: {'Age': 7, 'Colour': 'Green', 'Name': 'Zara'}

Adding
======

::

  result[key] = value

Convert
=======

Dictionary to list of tuples::

  l = properties.items()

Tuple to a dictionary::

  >>> t = ((0, 'Green'), (1, 'Red'))
  >>> dict(t)
  {0: 'Green', 1: 'Red'}

Delete
======

::

  del result[key]

Also see ``pop`` below..

Get
===

::

  results.get(key)

Note:

- If you want to return a value if ``key`` does not exist use:
  ``get(key, default)`` - when ``default`` is not provided and ``key`` is not
  in the map, ``None`` is returned.
- Also see ``pop`` below..

Exists
======

::

  if 'svn:mime-type' in properties:

...in older version of python::

  tel.has_key('guido')

Looping
=======

python 3::

  >>> for k, v in knights.items():

python 2::

  >>> knights = {'gallahad': 'the pure', 'robin': 'the brave'}
  >>> for k, v in knights.iteritems():
  ...     print k, v
  ...
  gallahad the pure
  robin the brave
  >>> for key in knights.keys():
  ...     print key, knights[key]
  >>> for key, value in knights.items():
  ...     print key, value

**Note**: ``iteritems`` (and ``xrange``) only provide values when requested.
``items`` (and ``range``) build complete list when called.

Merge
=====

::

  >>> family = {'Peter':44, 'Alison':45}
  >>> children = {'Barry':21, 'Martin':18}
  >>> family.update(children)
  >>> family
  {'Peter': 44, 'Alison': 45, 'Barry': 21, 'Martin': 18}

Ordered
=======

::

  from collections import OrderedDict
  result = OrderedDict()

Pop
===

::

  >>> d = {'a':1, 'b':2}
  >>> d.pop('b')
  2
  >>> d
  {'a': 1}
  >>> d.pop('c')
  Traceback (most recent call last):
    File "<stdin>", line 1, in <module>
  KeyError: 'c'
  >>> d.pop('c', None)

Sort
====

Sort the whole dictionary in python 3::

  from collections import namedtuple, OrderedDict

  def url(self, path, **kwargs):
      ordered = OrderedDict(sorted(kwargs.items()))

Sort a dictionary by the values::

  import operator
  sorted(descriptions.items(), key=operator.itemgetter(1))

Return the keys as a list... (and sort in place)::

  l = results.keys();
  l.sort()

Reverse
=======

python 2.7 and above I think::

  >>> d = {'name': 'Patrick', 'distance': 23}
  >>> {v: k for k, v in d.items()}
  {'Patrick': 'name', 23: 'distance'}

Values
======

In python 3, you probably need to convert the ``values`` to a ``list`` e.g::

  return list(result.values())

I don't fully understand this yet, but perhaps `Dictionary view objects`_
might help?


.. _`Dictionary view objects`: http://docs.python.org/3/library/stdtypes.html#dictionary-view-objects
.. _`python - Sorting Mini-HOW TO`: http://wiki.python.org/moin/HowTo/Sorting
.. _`Simple but handy "collector of a bunch of named stuff" class`: http://code.activestate.com/recipes/52308-the-simple-but-handy-collector-of-a-bunch-of-named/
