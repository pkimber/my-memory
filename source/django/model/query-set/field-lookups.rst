Field Lookups
*************

.. highlight:: python

From `Field lookups`_

::

  exact
  iexact
  contains
  icontains

in
--

::

  Entry.objects.filter(id__in=[1, 3, 4])

::

  gt
  gte
  lt
  lte

startswith
----------

::

  Product.objects.filter(slug__startswith='ACF_')

::

  istartswith
  endswith
  iendswith
  range
  year
  month
  day
  week_day
  isnull
  search
  regex
  iregex


.. _`Field lookups`: https://docs.djangoproject.com/en/dev/ref/models/querysets/#field-lookups
