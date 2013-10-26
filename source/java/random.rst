Random
******

Sample
======

**This code is written in jython**... but can be easily converted to Java:

::

  from java.util import Random

  class TestRunner:
      def __init__(self):
          self.random = Random()
          self.flavours = [
              'beef',
              'cheese',
              'chicken'
              ]

      def _get_flavour(self):
          index = self.random.nextInt(len(self.flavours))
          return self.flavours[index]

Note: ``nextInt`` will return an integer value up in the range ``0`` to the
parameter value.
