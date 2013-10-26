String literal
**************

Links
=====

- `String literal concatenation`_
- `Long strings in Python`_

Concatenation
=============

`String literal concatenation`_ can be used to reduce the number of backslashes
needed, to split long strings conveniently across long lines, or even to add
comments to parts of strings, for example:

.. code-block:: python

  s = 'foo' 'bar'
  print s
  >> foobar

.. code-block:: python

  address = ('130 High Street, '
      'Crediton, '
      'Devon')
  print address
  >> 130 High Street, Crediton, Devon

.. code-block:: python

  import re
  re.compile("[A-Za-z_]"       # letter or underscore
             "[A-Za-z0-9_]*"   # letter, digit or underscore
            )


.. _`Long strings in Python`: http://bluesock.org/~willg/blog/dev/python/long_strings.html
.. _`String literal concatenation`: http://docs.python.org/reference/lexical_analysis.html#string-literal-concatenation
