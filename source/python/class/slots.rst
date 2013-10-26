Slots
*****

A slot is nothing more than a memory management nicety: when you define
``__slots__`` on a class, you’re telling the Python interpreter that the list
of attributes described within are the only attributes this class will ever
need, and a dynamic dictionary is not needed to manage the references to other
objects within the class:

::

  class X(object):
      __slots__ = ["m", "n"]

  >>> x = X()
  >>> x.m = 10
  >>> x.n = 10
  >>> x.k = 3
  Traceback (most recent call last):
    File "<interactive input>", line 1, in ?
  AttributeError: 'X' object has no attribute 'k'

- ``__slots__`` reserves space for the listed variables directly in the
  instance.
- Classes that define slots don't have an instance dictionary (``__dict__``).
- If you try to assign to an attribute that's not in ``__slots__``, you receive
  an error.  This may be quite useful for struct-like classes, because it
  prevents problems with misspelled attribute names.
- Just be warned that a slot in a derived class hides a slot of the same name
  in the base class.
