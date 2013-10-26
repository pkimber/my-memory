Getting Started
***************

.. highlight:: python

Sample
======

Simple test case.  All methods starting with ``test`` will be run by
``unittest.main()``.

::

  import DocumentLine
  import unittest

  class DocumentLineTest(unittest.TestCase):
      def setUp(self):
          self.line = DocumentLine.DocumentLine()
          self.line.setQuantity(2)
          self.line.setUnitPrice(12.50)

      def tearDown(self):
          pass

      def testGetTotal(self):
          self.assertEqual(self.line.getTotal(), 25.00)

  if __name__ == '__main__':
      unittest.main()

Note:

- Do not define an ``__init__`` function with ``self`` as the only
  parameter.  If you do you will get the following error:

  ::

    TypeError: __init__() takes exactly 1 argument (2 given)

  I think this is because the ``init`` function for ``unittest.TestCase``
  has two parameters.

- For assert true, use ``self.assert_(True)``.  I think this is because
  python alrady has a built in ``assert`` function.

Exception
=========

**NOTE**: Use ``assertRaises`` for this in future (:doc:`assert`).

Testing for exceptions:

::

  def runTest(self):
      try:
          self.widget.resize(-1,-1)
      except ValueError:
          pass
      else:
          self.fail("expected a ValueError")

Message
=======

The message is the last parameter e.g:

::

  self.assertEqual(
      self.widget.size(), (100,150),
      'wrong size after resize')

Methods
=======

::

  self.failIf(expr)     # fail if expr is True.
  self.failUnless(expr) # fail if expr is False.
  self.failUnlessEqual(1 + 1, 2)

Suite
=====

I created a separate file called ``run_all_tests.py`` which includes all my
other unit test classes:

::

  from apt_to_dictionary_test import myFirstTest
  from apt_structure_test import mySecondTest

  import unittest

  suite = unittest.TestSuite([
      unittest.TestLoader().loadTestsFromTestCase(myFirstTest),
      unittest.TestLoader().loadTestsFromTestCase(mySecondTest)
      ])

  if __name__ == '__main__':
      runner = unittest.TextTestRunner()
      runner.run(suite)
