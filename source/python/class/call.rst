__call__
********

.. highlight:: python


Why would one use the special method ``__call__`` instead of defining a new
method for an object in Python (Quora):

- When you need to create an object that acts like a function.

  One example is when writing function decorators.  A function decorator needs
  to return an object that acts like a function, so ``__call__`` can be useful.
  It's awkward to write a memoizing decorator without using ``__call__``.

  Another example is when dealing with third-party libraries that take
  functions as arguments.  Using ``__call__`` is often the cleanest way to
  interact with these libraries in a way that preserves state.

- Most of the other times it would be tempting to use ``__call__`` I think it
  would be more appropriate to use either a bound method or a lambda.  If you
  can conveniently use either a bound method or a lambda instead of
  ``__call__`` I think you probably should.

Sample
======

::

  class Animal(object):
      def __init__(self, name, legs):
          self.name = name
          self.legs = legs
          self.stomach = []

      def __call__(self, food):
          self.stomach.append(food)

      def __str__(self):
          return '%s has %s legs and has eaten %s' % (
              self.name, self.legs, ' and '.join(self.stomach)
          )


  cow = Animal('cow', 4)
  cow('Oats')
  cow('Silage')
  print cow

  hen = Animal('hen', 2)
  hen('Corn')
  print hen

Output

::

  cow has 4 legs and has eaten Oats and Silage
  hen has 2 legs and has eaten Corn
