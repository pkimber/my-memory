Generators
**********

Links
=====

- `Copy of presentation (and source code)`_ by `David M. Beazley`_

Generator Expressions
=====================

Generator expressions are shorthand for generators.  Just like list
comprehensions, but with ``()`` instead of ``[]``:

::

  In [1]: items = (str(x) for x in range(6))
  In [2]: items
  Out[2]: <generator object <genexpr> at 0x8d1cb1c>
  In [3]: for i in items: print i
  0
  1
  2
  3
  4
  5

Sample
======

Here is a sample generator:

::

  def get_next_char(valid_chars):
      i = 0
      switch = False
      while True:
          yield valid_chars[i], switch
          if switch:
              switch = False
          i = i + 3
          if i > len(valid_chars) -1:
              i = i - len(valid_chars)
              switch = True

...and here are two different ways of using it:

::

  count = 0
  valid_chars = 'XJ62RY9K51FWNC37PE8M4THV0DGLQ'
  for char_1, switch_1 in get_next_char(valid_chars):
      count = count + 1
      if switch_1:
          print '|',
      print char_1,
      if count > 50:
          break

::

  x = get_next_char('XJ62RY9K51FWNC37PE8M4THV0DGLQ')
  print x.next()
  print x.next()


.. _`Copy of presentation (and source code)`: ../../misc/howto/python/generators.zip
.. _`David M. Beazley`: http://www.dabeaz.com/generators/index.html
