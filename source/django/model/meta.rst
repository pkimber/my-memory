Meta
****

.. highlight:: python

unique_together
---------------

Sets of field names that, taken together, must be unique:

::

  class Meta:
      unique_together = (('driver', 'restaurant'),)

This is a list of lists of fields that must be unique when considered together.
It's used in the Django admin and is enforced at the database level (i.e. the
appropriate ``UNIQUE`` statements are included in the ``CREATE TABLE``
statement).

**Note**: For convenience, ``unique_together`` can be a single list when
dealing with a single set of fields:

::

  class Meta:
      unique_together = ('driver', 'restaurant')

verbose_name
------------

::

  class Meta:
      ordering = ['name']
      verbose_name = 'Publisher'
      verbose_name_plural = 'Publishers'
