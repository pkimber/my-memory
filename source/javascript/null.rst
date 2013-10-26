null
****

Note: Don't miss the notes ref ``undefined`` below:

Sample
======

::

  val = null;
  // will print "no":
  if(val)
      print('yes');
  else
      print('no');

  // convert to string will print "null":
  print(val + '');

  // null evaluates to 0 if used as a number:
  print(3 + val);

Note:

- ``undefined`` is returned when you use a:

  - variable that has been declared but never had a value assigned to it.
  - object propery that doesn't exist.

- ``undefined`` is not the same as ``null``.
- Although they are different, the ``==`` operator considers them equal.
- To distinguish between them use the ``===`` operator or the ``typeof``
  operator.
- When used in a *boolean* context, it converts to ``false``, when used as
  a number, it converts to ``NaN`` and when used as a string, it converts to
  ``undefined``.
