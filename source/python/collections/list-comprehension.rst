List Comprehension
******************

.. highlight:: python

Sample
======

if
--

::

  vec = [2, 4, 6]
  [x for x in vec if x > 3]

  [4, 6]

List to a List of Lists
-----------------------

Convert a list to a list of lists:

::

  names = ['Peter', 'Alison', 'Barry', 'Martin']
  [[item] for item in names]

  [['Peter'], ['Alison'], ['Barry'], ['Martin']]
