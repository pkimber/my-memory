Tips
****

.. highlight:: python

From `Combine 2 Django Querysets from Different Models`:

If you've ever tried to concatenating two or more querysets from different
models (i.e. combined = queryset1 | queryset2), you've hit this lovely error::

  Cannot combine queries on two different base models.

The solution to this is to use itertools_::

  from itertools import chain
  result_list = list(chain(queryset1, queryset2))

This allows you to not only combine the querysets into a single iterable, but
it also allows you to sort the entire set by a shared field such as the date
created::

  from itertools import chain
  from operator import attrgetter

  result_list = sorted(
      chain(queryset1, queryset2),
      key=attrgetter('date_created')
  )


.. _`Combine 2 Django Querysets from Different Models`: http://chriskief.com/2015/01/12/combine-2-django-querysets-from-different-models/
.. _itertools: https://docs.python.org/3.4/library/itertools.html
