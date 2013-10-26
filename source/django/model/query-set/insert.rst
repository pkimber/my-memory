Insert
******

.. highlight:: python

::

  >>> Entry.objects.bulk_create([
  ...     Entry(headline="Django 1.0 Released"),
  ...     Entry(headline="Django 1.1 Announced"),
  ...     Entry(headline="Breaking: Django is awesome")
  ... ])

Note:

- The model's ``save()`` method will not be called, and the ``pre_save`` and
  ``post_save`` signals will not be sent.
- It does not work with child models in a multi-table inheritance scenario.
- If the model's primary key is an ``AutoField`` it does not retrieve and set
  the primary key attribute, as ``save()`` does.
