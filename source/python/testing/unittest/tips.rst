Tips
****

.. highlight:: python

Diff
====

maxDiff_::

  def setUp(self):
      self.maxDiff = None

Skip Test
=========

::

  try:
      ...
  except:
      self.skipTest('Selenium server not available. Build marked UNSTABLE')


.. _maxDiff: https://docs.python.org/3.4/library/unittest.html#unittest.TestCase.maxDiff
