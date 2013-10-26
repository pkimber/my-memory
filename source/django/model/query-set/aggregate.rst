Aggregate
*********

.. highlight:: python

Import
======

::

  from django.db.models import Avg, Max, Min, Count, Sum

Sample
======

From `Generating aggregates over a QuerySet`_

::

  >>> from django.db.models import Avg
  >>> Book.objects.aggregate(Avg('price'))
  {'price__avg': 34.35}

  >>> from django.db.models import Avg, Max, Min, Count
  >>> Book.objects.aggregate(Avg('price'), Max('price'), Min('price'))
  {'price__avg': 34.35, 'price__max': Decimal('81.20'), 'price__min': Decimal('12.99')}

Note: The ``aggregate`` method returns a dictionary.  To specify the key name:

::

  >>> Book.objects.aggregate(average_price=Avg('price'))
  {'average_price': 34.35}

From `Aggregations and other QuerySet clauses`_

::

  Book.objects.annotate(num_authors=Count('authors')).filter(num_authors__gt=1)

::

  village_rows = Villages.objects.filter(
      voting__completed__isnull=True
  ).annotate(
      voter_count=Count('voting')
  ).filter(
      voter_count__gt=300
  )

::

  q = Post.objects.annotate(Max('comment'))
  q[0]
  q[0].comment__max
  q[2].id
  q[2].comment__max

Group
-----

::

  village_rows = Villages.objects.filter(
      voting__completed__isnull=True
  ).values(
      'category__name'
  ).annotate(
      voter_count=Count('pk')
  )


.. _`Aggregations and other QuerySet clauses`: https://docs.djangoproject.com/en/dev/topics/db/aggregation/#aggregations-and-other-queryset-clauses
.. _`Generating aggregates over a QuerySet`: https://docs.djangoproject.com/en/dev/topics/db/aggregation/#generating-aggregates-over-a-queryset
