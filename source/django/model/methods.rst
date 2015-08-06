Methods
*******

.. highlight:: python

Copy
====

- http://djangosnippets.org/snippets/1040/
  djangosnippets - Copy a model instance.
- `ability to make a copies of model instances`_

To copy an instance of a model (using the snippet code from above)::

  from django.db.models import AutoField
  def copy_model_instance(obj):
      initial = dict(
          [(f.name, getattr(obj, f.name))
              for f in obj._meta.fields
                  if not isinstance(f, AutoField) and \
                      not f in obj._meta.parents.values()
          ]
      )
      return obj.__class__(**initial)

Create
======

``create(**kwargs)`` creates a new object, saves it (puts it in the related
object set if applicable) and returns the newly created object::

  company = Company.objects.create(name=name, postcode=postcode)
  print company.pk

get_absolute_url
================

The absolute URL should be based on a named URL.  So for this URL::

  url(r'^(?P<category>[-\w]+)/(?P<feature>[-\w]+)/$',
      feature_item_view,
      name='feature_item'),

... we can write this method::

  from django.db.models import permalink

  def get_absolute_url(self):
      """ URL for this feature. """
      return ('feature_item', (self.category.slug, self.slug,))
  get_absolute_url = permalink(get_absolute_url)

... and use it in the template like this::

  <a href=" object.get_absolute_url "> object.name </a>

Overriding predefined model methods.
====================================

- `Overriding predefined model methods`_:
- **Also see** :doc:`validation`.

.. _django_model_method_save:

Save
----

::

  class Blog(models.Model):
      name = models.CharField(max_length=100)
      tagline = models.TextField()

      def save(self, *args, **kwargs):
          do_something()
          super(Blog, self).save(*args, **kwargs) # Call the "real" save() method.
          do_something_else()

You can save the original name of a file::

  def save(self, *args, **kwargs):
      """Save the original file name."""
      self.original_file_name = self.document.name
      # Call the "real" save() method.
      super().save(*args, **kwargs)

You can also prevent saving::

  class Blog(models.Model):
      name = models.CharField(max_length=100)
      tagline = models.TextField()

      def save(self, *args, **kwargs):
          if self.name == "Yoko Ono's blog":
              return # Yoko shall never have her own blog!
          else:
              super(Blog, self).save(*args, **kwargs) # Call the "real" save() method.

And, only save stuff when the record is created::

      def save(self, *args, **kwargs):
          if not self.pk:
              # do some stuff here...

You can also check other records in the table e.g::

  class Shop(models.Model):
      description = models.CharField(max_length=255)
      default = models.BooleanField(default=False)

      def save(self, *args, **kwargs):
          # only one shop can be the default.
          if self.default:
              shops = Shop.objects.filter(default=True)

              # don't update this feature if it has already been saved.
              if self.pk:
                  shops = shops.exclude(pk=self.pk)
              for shop in shops:
                  shop.default=False
                  shop.save()
          # Call the "real" save() method.
          super(Shop, self).save(*args, **kwargs)

Row Level
=========

`Model methods`_:

Define custom methods on a model to add custom "row-level" functionality to
your objects.  Whereas ``Manager`` methods are intended to do "table-wide"
things, model methods should act on a particular model instance e.g::

  from django.contrib.localflavor.us.models import USStateField

  class Person(models.Model):
      first_name = models.CharField(max_length=50)
      last_name = models.CharField(max_length=50)
      birth_date = models.DateField()
      address = models.CharField(max_length=100)
      city = models.CharField(max_length=50)
      state = USStateField() # Yes, this is America-centric...

      def baby_boomer_status(self):
          "Returns the person's baby-boomer status."
          import datetime
          if datetime.date(1945, 8, 1) <= self.birth_date <= datetime.date(1964, 12, 31):
              return "Baby boomer"
          if self.birth_date < datetime.date(1945, 8, 1):
              return "Pre-boomer"
          return "Post-boomer"

      def is_midwestern(self):
          "Returns True if this person is from the Midwest."
          return self.state in ('IL', 'WI', 'MI', 'IN', 'OH', 'IA', 'MO')

      def _get_full_name(self):
          "Returns the person's full name."
          return '%s %s' % (self.first_name, self.last_name)
      full_name = property(_get_full_name)

Note: The last method in this example is a property.


.. _`ability to make a copies of model instances`: http://code.djangoproject.com/ticket/4027
.. _`Overriding predefined model methods`: http://docs.djangoproject.com/en/1.1/topics/db/models/#overriding-predefined-model-methods
.. _`Model methods`: http://docs.djangoproject.com/en/1.1/topics/db/models/#id4
