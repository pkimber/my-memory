Tips
****

.. highlight:: python

.. _unittest_maxdiff:

Diff
====

To control the maximum length of diffs output by assert methods use maxDiff_::

  def setUp(self):
      self.maxDiff = None

  # or
  class MyTest(unittest.TestCase):
      maxDiff = None

Skip Test
=========

::

  try:
      ...
  except:
      self.skipTest('Selenium server not available. Build marked UNSTABLE')


.. _maxDiff: https://docs.python.org/3.4/library/unittest.html#unittest.TestCase.maxDiff
