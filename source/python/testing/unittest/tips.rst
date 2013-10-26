Tips
****

.. highlight:: python

Skip Test
=========

::

  try:
      ...
  except:
      self.skipTest('Selenium server not available. Build will be marked UNSTABLE')
