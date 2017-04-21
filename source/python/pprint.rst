pprint
******

.. highlight:: python

Links
=====

- `pprint - Data pretty printer`_

.. note::

  I think the :doc:`json/print` ``dumps`` is probably easier to read.

Sample
======

::

  import pprint
  pp = pprint.PrettyPrinter(indent=4)
  pp.pprint(data)

::

  >>> import pprint
  >>> stuff = ['spam', 'eggs', 'lumberjack', 'knights', 'ni']
  >>> stuff.insert(0, stuff[:])
  >>> pprint.pprint(stuff, indent=4)
  [   ['spam', 'eggs', 'lumberjack', 'knights', 'ni'],
      'spam',
      'eggs',
      'lumberjack',
      'knights',
      'ni']

Note: You can construct a ``PrettyPrinter`` object::

  >>> pp = pprint.PrettyPrinter(indent=4)
  >>> pp.pprint(stuff)

Note: To return a string, rather than writing to ``stdout``, then use::

  import pprint
  pprint.pformat(...
  pprint.pformat(data, indent=4)


.. _`pprint - Data pretty printer`: http://docs.python.org/library/pprint.html
