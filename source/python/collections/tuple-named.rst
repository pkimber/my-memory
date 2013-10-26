Named Tuple
***********

**Note**: Named tuples are immutable...

.. highlight:: python

Sample
======

::

  import collections

  Details = collections.namedtuple(
      'Details',
      'max_length max_value min_value'
  )

  d = Details(
      max_length=23,
      max_value=89,
      min_value=3
  )

  print d.max_length

Dictionary
==========

To convert a dictionary to a named tuple, use the double-star-operator:

::

  >>>
  >>> d = {'x': 11, 'y': 22}
  >>> Point(**d)
  Point(x=11, y=22)
