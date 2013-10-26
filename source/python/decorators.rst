Decorators
**********

.. highlight:: python

Links
=====

- `functools.wraps`_
- http://jackdied.blogspot.com

Sample
======

::

  from functools import wraps
  def my_decorator(f):
      @wraps(f)
      def wrapper(*args, **kwds):
          print 'Calling decorated function'
          return f(*args, **kwds)
      return wrapper

  @my_decorator
  def example():
      """Docstring"""
      print 'Called example function'

::

  >>> example()
  Calling decorated function
  Called example function
  >>> example.__name__
  'example'
  >>> example.__doc__
  'Docstring'

Without the use of this decorator factory, the name of the example function
would have been ``wrapper``, and the docstring of the original ``example()``
would have been lost.


.. _`functools.wraps`: http://docs.python.org/library/functools.html#functools.wraps
