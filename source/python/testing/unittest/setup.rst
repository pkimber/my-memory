Setup
*****

.. highlight:: python

Class
=====

To set-up resources a single time for all the tests (perhaps for an database
connection which is expensive to create)::

  from selenium import webdriver
  import unittest

  class SeleniumTwoTableView(unittest.TestCase):

      @classmethod
      def setUpClass(cls):
          cls.browser = webdriver.Firefox()
          cls.browser.get('http://localhost:8000/two_table_view/')

      def _text(self, element_id):
          element = self.browser.find_element_by_id(element_id)
          return element.text

      @classmethod
      def tearDownClass(cls):
          cls.browser.close();

Note:

- The ``setUpClass`` and ``tearDownClass`` methods should be annotated with
  ``@classmethod`` (from `How do I use the unittest setUpClass method()`_).
- The ``cls`` variable , can be accessed by test methods using ``self`` e.g.
  in the sample above, ``cls.browser`` is accessed in the test methods using
  ``self.browser``.


.. _`How do I use the unittest setUpClass method()`: http://stackoverflow.com/questions/4891671/how-do-i-use-the-unittest-setupclass-method
