List
****

.. highlight:: python

Initialise
----------

::

  >>> l = []
  >>> sports = ['football', 'cricket']

Adding
------

::

  l.append(value)

Append/Extend
-------------

::

  In [5]: l1 = [1,2,3]
  In [6]: l2 = [4,5,6]
  In [7]: l1.extend(l2)
  In [8]: l1
  Out[8]: [1, 2, 3, 4, 5, 6]

Not sure if it is OK to do the following, but it appears to work:

::

  >>> l1 = ['peter', 'alison',]
  >>> l2 = ['barry', 'martin',]
  >>> l1
  ['peter', 'alison']
  >>> l2
  ['barry', 'martin']
  >>> l1 + l2
  ['peter', 'alison', 'barry', 'martin']
  >>>

Convert
-------

List to dictionary:

::

  >>> l = [(1, 'one'), (2, 'two'), (3, 'three')]
  >>> dict(l)
  {1: 'one', 2: 'two', 3: 'three'}

List to tuple:

::

  >>> sports = ['football', 'cricket']
  >>> tuple(sports)
  ('football', 'cricket')

Delete/Remove
-------------

::

  s = [1, 2, 3]
  s.remove(2)
  >> s
  [1, 3]

Get
---

Get the last element in the list:

::

  l[-1]

Note: Also see *Slicing* below...

Index
-----

::

  ['Exbourne', 'North Tawton', 'Winkleigh'].index('Winkleigh')

Looping
-------

::

  >>> for idx, season in enumerate(['Spring', 'Summer', 'Fall', 'Winter']):
  ...     print idx, season
  0 Spring
  1 Summer
  2 Fall
  3 Winter

Version 2.6 adds a ``start`` parameter (which defaults to 0).

Looping - Over More Than One List
---------------------------------

::

  questions = ['name', 'quest', 'favorite color']
  answers = ['lancelot', 'the holy grail', 'blue']
  for q, a in zip(questions, answers):
      print 'What is your %s?  It is %s.' % (q, a)

Reverse
-------

Reverses the items of l **in place**:

::

  l.reverse()

Slicing
-------

From `good primer for python slice notation`_:

::

  a[start:end] # items start through end-1
  a[start:]    # items start through the rest of the array
  a[:end]      # items from the beginning through end-1
  a[:]         # a copy of the whole array

Sorting
-------

Sorting (in place):

::

  l.sort()


.. _`good primer for python slice notation`: http://stackoverflow.com/questions/509211/good-primer-for-python-slice-notation
