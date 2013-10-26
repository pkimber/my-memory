Descriptors - The Magic behind python - Raymond Hettinger
*********************************************************

What is a descriptor
====================

It is like a magic dot...

Reading the dot, invokes its magic.

http://tinyurl.com/d63d has all the gory details.

Technically
-----------

An object that defines ``__get__``, ``__set__`` and ``__delete__``.

Must be put into the class dictionary, not in the instance dictionary.
If you put it in the instance dictionary, it will not be invoked.
It is only invoked when it is put into the class dictionary.

Sample
======

desc.py

- ``__get__`` is invoked when you read the
- ``__set__`` when something is assigned to the object.
- ``__del__`` when the object is deleted?

Notes
=====

Property is a descriptor.

It is trivially easy to write your own variants.

The following two ``__getattribute__`` methods are not the same:

- A.x translates to ``type.__getattribute__(A, 'x')``
- a.x translates to ``object.__getattribute__(a, 'x')``

If we override ``__getattribute__`` you can create your own new types
of magic for dotted access.

Every time you see a ``.`` think ``__getattribute__``.

Super provides it's own ``__getattribute__``.  It's special trick is
to search the ``__mro__`` during dotted access.

Functions
---------

Functions are descriptors, running ``dir(f)`` shows that functions have
a ``__get__`` methods.

If you put a method in a class dictionary, the ``__get__`` method will
activate upon dotted access.

Slots
-----

http://tinyurl.com/59e2gk

When a class is created, space is pre-allocated for each slot.

How python works
----------------

Dotted attribute access like ``A.x`` or ``a.x`` calls the ``__getattribute__``
method.

Let's make something new
------------------------

http://code.activestate.com/recipes/205126

Useful Methods (nothing to do with the talk)
============================================

::

  vars(d)

How to describe __
------------------

- *double under*
- *under, under*
- *dunder*

