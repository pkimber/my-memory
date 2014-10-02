Assertions
**********

.. highlight:: python

From `list of assert methods`_

+------------------------------------+-----------------------------+----------+
| Method                             | Checks that                 | New in   |
+====================================+=============================+==========+
| ``assertDictEqual(a, b)``          | used by ``assertEqual``     | 2.7      |
+------------------------------------+-----------------------------+----------+
| ``assertDictContainsSubset(a, b)`` | all the key/value pairs in  | 2.7      |
|                                    | ``a`` exist in ``b``        |          |
+------------------------------------+-----------------------------+----------+
| ``assertEqual(a, b)``              | ``a == b``                  |          |
+------------------------------------+-----------------------------+----------+
| ``assertFalse(x)``                 | ``bool(x) is False``        |          |
+------------------------------------+-----------------------------+----------+
| ``assertGreater(a, b)``            | ``a > b``                   | 2.7      |
+------------------------------------+-----------------------------+----------+
| ``assertDictEqual(expected, a)``   |                             | 2.7      |
+------------------------------------+-----------------------------+----------+
| ``assertIn(a, b)``                 | ``a in b``                  | 2.7      |
+------------------------------------+-----------------------------+----------+
| ``assertIs(a, b)``                 | ``a is b``                  | 2.7      |
+------------------------------------+-----------------------------+----------+
| ``assertIsInstance(a, b)``         | ``isinstance(a, b)``        | 2.7      |
+------------------------------------+-----------------------------+----------+
| ``assertIsNone(x)``                | ``x is None``               | 2.7      |
+------------------------------------+-----------------------------+----------+
| ``assertIsNot(a, b)``              | ``a is not b``              | 2.7      |
+------------------------------------+-----------------------------+----------+
| ``assertIsNotNone(x)``             | ``x is not None``           | 2.7      |
+------------------------------------+-----------------------------+----------+
| ``assertItemsEqual(a, b)``         | ``sorted(a) == sorted(b)``  | 2.7      |
+------------------------------------+-----------------------------+----------+
| ``assertLess(a, b)``               | ``a < b``                   | 2.7      |
+------------------------------------+-----------------------------+----------+
| ``assertListEqual(list1, list2)``  |                             | 2.7      |
+------------------------------------+-----------------------------+----------+
| ``assertNotEqual(a, b)``           | ``a != b``                  |          |
+------------------------------------+-----------------------------+----------+
| ``assertNotIn(a, b)``              | ``a not in b``              | 2.7      |
+------------------------------------+-----------------------------+----------+
| ``assertNotIsInstance(a, b)``      | ``not isinstance(a, b)``    | 2.7      |
+------------------------------------+-----------------------------+----------+
| ``assertRaises(exc, fun,``         | ``fun(*args, **kwds)``      |          |
|       ``*args, **kwds)``           | ``raises exc``              |          |
+------------------------------------+-----------------------------+----------+
| ``assertSequenceEqual(sq1, sq2)``  |                             | 2.7      |
+------------------------------------+-----------------------------+----------+
| ``assertTrue(x)``                  | ``bool(x) is True``         |          |
+------------------------------------+-----------------------------+----------+
| ``fail``                           |                             |          |
+------------------------------------+-----------------------------+----------+

All the assert methods (except ``assertRaises`` and ``assertRaisesRegexp``
accept a *msg* argument that, if specified, is used as the error message on
failure e.g. ``assertEqual(first, second, msg=None)``.

Sample
======

``assertIn``
------------

::

  self.assertIn('PJK', 'ABC, PJK, XYZ')

``assertItemsEqual``
--------------------

Test that sequence expected contains the same elements as actual, regardless of
their order:

::

  self.assertItemsEqual(
      names,
      field_names,
      'Item has invalid fields.'
  )

``assertRaises``
----------------

::

  from django.core.exceptions import ValidationError

  with self.assertRaises(ValidationError):
      contact.full_clean()

or::

  from django.core.exceptions import ValidationError
  from django.test import TestCase

  from blog.models import Article

  class ModelValidationTest(TestCase):

      def test_default(self):
          article = Article()
          self.assertRaises(ValidationError, article.full_clean)

**Note**: When using ``assertRaises``, the method expects a ``callable`` i.e.
don't call the ``full_clean()`` function, pass it *without the brackets*.

``fail``
--------

::

  try:
      self.create_simple(request=0)
      self.fail('Should throw a ValidationError.')
  except ValidationError:
      pass


.. _`list of assert methods`: http://docs.python.org/library/unittest.html#assert-methods
