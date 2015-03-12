class
*****

.. highlight:: python

Simple class with ``__init__`` and ``__str__`` methods::

  class client(object):
      def __init__(self, name, address, age):
          self.name = name
          self.address = address
          self.age = age

      def __str__(self):
          return self.name + ', ' + self.address + ', ' + str(self.age)

Note: A new-style class is one that is derived, either directly or indirectly,
from a built-in type.  The base class for all *new-style* classes is called
``object``.

Name
====

New style classes::

  type(self).__name__

For old (and new) style classes::

  self.__class__.__name__

Method Resolution Order
=======================

From `Python's super() considered super!`_::

  pprint(MyClassName.__mro__)

.. note:: See ``super`` below.

Properties
==========

:doc:`properties`

Static and Class Methods
========================

I am not sure I understand why we need ``classmethod`` and ``staticmethod``
(for more information see `this article by Michael Fotsch`_).

Class Method
------------

A class method is similar to a static method in that it has no ``self``
argument.  Instead, it receives a class as its first argument.  By convention,
this argument is called ``cls``.  A class method is defined using the
``classmethod`` descriptor::

  class MyClass(object):
      def SomeMethod(cls, x):
          print cls, x
      SomeMethod = classmethod(SomeMethod)

  class DerivedClass(MyClass):
      pass

  >>> MyClass.SomeMethod(15)
  __main__.MyClass 15
  >>> obj = MyClass()
  >>> obj.SomeMethod(15)
  __main__.MyClass 15
  >>> DerivedClass.SomeMethod(150)
  __main__.DerivedClass 15

In the last call, you can see that only the class involved in making the method
call defines the value of the ``cls`` argument.  This is despite the fact that
the method has been defined in a different class.

Static Method
-------------

::

  class MyClass(object):
      def SomeMethod(x):
          print x
      SomeMethod = staticmethod(SomeMethod)

  >>> MyClass.SomeMethod(15)
  15
  >>> obj = MyClass()
  >>> obj.SomeMethod(15)
  15

Note: You should really consider creating a static method whenever a method
does not make substantial use of the instance (``self``).

super
*****

For python 3::

  def get_data(self, name):
      data = super().get_data(name)
      # do something with the data
      return data


.. _`this article by Michael Fotsch`: http://www.geocities.com/foetsch/python/new_style_classes.htm
.. _`Python's super() considered super!`: http://rhettinger.wordpress.com/2011/05/26/super-considered-super/
