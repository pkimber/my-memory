API
***

.. highlight:: python

Links
=====

- `QuerySet API reference`_
- `Can Django do nested queries and exclusions`_ e.g. ``NOT IN`` (try
  ``exclude`` rather than ``filter``).
- `How do I do a not equal in Django queryset filtering?`_

API
===

LIMIT
-----

`Limiting QuerySets`_

For example, this returns the first 5 objects (``LIMIT 5``):

::

  Entry.objects.all()[:5]

order_by
--------

To order by more than one field:

::

  qs = Option.objects.filter(option_group__site=site)
  qs.order_by('option_group__name', 'name')

values
------

Return a dictionary, rather than model-instance objects e.g:

::

  >>> Blog.objects.filter(name__startswith='Beatles').values()
  [{'id': 1, 'name': 'Beatles Blog', 'tagline': 'All the latest Beatles news.'}]

...or to return specific fields:

::

  >>> Blog.objects.values('id', 'name')
  [{'id': 1, 'name': 'Beatles Blog'}]

values_list
-----------

This is similar to ``values`` except that instead of returning dictionaries, it
returns tuples.  Each tuple contains the value from the respective field passed
into the ``values_list()`` call - so the first item is the first field, etc.
For example:

::

  >>> Entry.objects.values_list('id', 'headline')
  [(1, u'First entry'), ...]

If you only pass in a single field, you can also pass in the flat parameter.
If ``True``, this will mean the returned results are single values, rather than
one-tuples e.g:

::

  >>> Entry.objects.values_list('id').order_by('id')
  [(1,), (2,), (3,), ...]

  >>> Entry.objects.values_list('id', flat=True).order_by('id')
  [1, 2, 3, ...]

Note: It is an error to pass in flat when there is more than one field.

If you don't pass any values to ``values_list()``, it will return all the
fields in the model, in the order they were declared.

Filter
======

See :doc:`field-lookups`...

Multi-Conditions
----------------

::

  rows = Delivery.objects.filter(name='sam', age=47)

Lazy Evaluation
---------------

::

  >>> q = Entry.objects.filter(headline__startswith="What")
  >>> q = q.filter(pub_date__lte=datetime.now())
  >>> q = q.exclude(body_text__icontains="food")
  >>> print q

Though this looks like three database hits, in fact it hits the database only
once, at the last line (``print q``).  In general, the results of a
``QuerySet`` aren't fetched from the database until you "ask" for them.

Sample
======

::

  python manage.py shell
  >>> from books.models import Publisher
  >>>
  >>> p = Publisher(name = 'Apress', address = '2855 Telegraph Ave.', website = 'http://www.apress.com/')
  >>> p.save()
  >>> p = Publisher(name = "O'Reilly", address = 'Farnham, Surrey', website = 'http://www.oreilly.com/')
  >>> p.save()

  >>> Publisher.objects.all()
  [<Publisher: Apress 2855 Telegraph Ave.>, <Publisher: O'Reilly Farnham, Surrey>]

  >>> Publisher.objects.filter(name='Apress')
  [<Publisher: Apress 2855 Telegraph Ave.>]

  >>> Publisher.objects.get(name='Apress')
  <Publisher: Apress 2855 Telegraph Ave.>

  >>> Publisher.objects.order_by("-name")
  [<Publisher: O'Reilly Farnham, Surrey>, <Publisher: Apress 2855 Telegraph Ave.>]

  >>> Publisher.objects.all()[1]
  <Publisher: O'Reilly Farnham, Surrey>

  >>> p = Publisher.objects.get(name="Apress")
  >>> p.delete()
  >>> Publisher.objects.all()
  [<Publisher: O'Reilly Farnham, Surrey>]

  >>> from django.contrib.auth.models import User
  >>> User.objects.filter(last_name__icontains='kimber')
  [<User: patrick>]


.. _`Can Django do nested queries and exclusions`: http://stackoverflow.com/questions/2359673/can-django-do-nested-queries-and-exclusions
.. _`Following relationships "backward"`: http://docs.djangoproject.com/en/dev/topics/db/queries/#following-relationships-backward
.. _`How do I do a not equal in Django queryset filtering?`: http://stackoverflow.com/questions/687295/how-do-i-do-a-not-equal-in-django-queryset-filtering
.. _`Limiting QuerySets`: https://docs.djangoproject.com/en/dev/topics/db/queries/#limiting-querysets
.. _`QuerySet API reference`: http://docs.djangoproject.com/en/1.1/ref/models/querysets/
