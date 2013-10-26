operators
*********

The Peculiar Nature of ``and`` and ``or``.
==========================================

`The Peculiar Nature of and and or`_:

::

  >>> 'a' and 'b'
  'b'
  >>> '' and 'b'
  ''
  >>> 'a' and 'b' and 'c'
  'c'

::

  >>> 'a' or 'b'
  'a'
  >>> '' or 'b'
  'b'
  >>> '' or [] or {}
  {}

::

  >>> a = 'first'
  >>> b = 'second'
  >>> 1 and a or b
  'first'
  >>> 0 and a or b
  'second'


.. _`The Peculiar Nature of and and or`: http://diveintopython.org/power_of_introspection/and_or.html

