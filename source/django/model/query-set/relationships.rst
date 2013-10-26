Relationships
*************

.. highlight:: python

Following relationships "backward"
==================================

`Following relationships "backward"`_:

OneToOneField
-------------

::

  class EntryDetail(models.Model):
      entry = models.OneToOneField(Entry)
      details = models.TextField()

  e = Entry.objects.get(id=2)
  e.entrydetail # returns the related EntryDetail object

Foreign Key
-----------

e.g. For these models:

::

  class Blog(models.Model):
      name = models.CharField(max_length=100)

  class Entry(models.Model):
      blog = models.ForeignKey(Blog)
      headline = models.CharField(max_length=255)

...the entries for a blog can be retrieved by using the name of the model for
the foreign key, converted to lower-case with ``_set`` appended:

::

  >>> b = Blog.objects.get(id=1)
  >>> b.entry_set.all()

Note:

- The ``_set`` manager returns a standard query set which can be manipulated in
  the normal way.
- See the note ref ``related_name`` below...

Many to Many
------------

The model that defines the ``ManyToManyField`` uses the attribute name of that
field itself, whereas the "reverse" model uses the lowercased model name of the
original model, plus '``_set``' (just like reverse one-to-many relationships)
e.g:

::

  e = Entry.objects.get(id=3)
  e.authors.all() # Returns all Author objects for this Entry.
  e.authors.count()
  e.authors.filter(name__contains='John')

  a = Author.objects.get(id=5)
  a.entry_set.all() # Returns all Entry objects for this Author.

Note: Like ``ForeignKey``, ``ManyToManyField`` can specify ``related_name``.
In the above example, if the ``ManyToManyField`` in ``Entry`` had specified
``related_name='entries'``, then each ``Author`` instance would have an
``entries`` attribute instead of ``entry_set``.
