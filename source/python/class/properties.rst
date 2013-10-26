Properties
**********

.. highlight:: python

Sample
======

::

  def _set_name(self, value):
      self._name = value

  def _get_name(self):
      return self._name

  name = property(fget=_get_name, fset=_set_name)

See ``sample/python/sample-class-with-property.py``

Note:

- You can have read only properties.
- Properties will only work with *new style* classes.
- You can create a delete method for a property (``fdel``).
- You can set the description for a property using the ``doc`` parameter.

@property decorator
===================

(From `@property decorator`_), One nice thing is that you can define your
classes with attributes, and then later change them into methods without having
to rewrite the rest of your code.

For example, you might have a class ``Item`` that represents an item you have
for sale. It could have a ``cost`` attribute:

::

  class Item:
      def __init__(cost):
          self.cost = cost

  item = Item(5)
  print item.cost

Later you could decide that the cost may need to include freight.  You can
define ``cost`` as a ``@property``, and you will still be able to call it as
normal:

::

  class Item:
      def __init__(cost, freight=0):
          self._cost = cost
          self.freight = freight

      @property
      def cost(self):
          returns self._cost + self.freight

  item = Item(5)
  print item.cost # No need to change to item.cost()


.. _`@property decorator`: http://www.reddit.com/r/Python/comments/nl7f5/property/
