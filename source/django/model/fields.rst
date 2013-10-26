Field Type
**********

.. highlight:: python

Links
=====

- `Model reference`_
- `Model Style`_

Attributes
==========

``verbose_name``
----------------

From `How can I get access to a Django Model field verbose name dynamically?`_:

::

  from village.models import VillageModel
  row = VillageModel.objects.all()[0]
  row._meta.get_field_by_name('population')[0].verbose_name

Parameters
==========

Name
----

Standard field types take an optional first positional argument that is the
verbose name to use for that field e.g:

::

  first_name = models.CharField("person's first name", max_length=30)

For the other field types (``ForeignKey``, ``ManyToManyField`` and
``OneToOneField``) use the ``verbose_name`` keyword parameter:

::

  poll = models.ForeignKey(Poll, verbose_name="the related poll")

``blank``
---------

If ``True``, the field is allowed to be blank.  Default is ``False``.

**Note**: See ``null`` notes below.  To allow a date to be empty, you will need
to set both ``blank`` and ``null`` (see *Sample* below):

*Sample*

::

  completed = models.DateTimeField(blank=True, null=True)
  notes = models.TextField(blank=True)

``editable``
------------

Default is ``True``.

``help_text``
-------------

Extra "help" text to be displayed under the field on the object's admin form.

``null``
--------

If ``True``, Django will store empty values as ``NULL`` in the database.
Default is ``False``.

**Note**:

- Empty string values will always get stored as empty strings, not as ``NULL``.
- Only use ``null=True`` for non-string fields such as integers, booleans and
  dates.
- For both types of fields, you will also need to set ``blank=True`` if you
  wish to permit empty values in forms, as the ``null`` parameter only affects
  database storage (see ``blank`` above).

*Sample*

::

  num_pages = models.IntegerField(blank=True, null=True)

``primary_key``
---------------

::

  primary_key=True

Note:  If Django sees you've explicitly set the ``primary_key``, it won't add
the automatic id column.

``unique``
----------

If ``True``, this field must be unique throughout the table.

Note: Also see :doc:`meta`, ``unique_together``...

Types
=====

BooleanField
------------

::

  models.BooleanField()

If you need to accept null values then use ``NullBooleanField`` instead.

CharField
---------

A string field, for small to large-sized strings.

Note: ``max_length`` is a required parameter.

*Sample*

::

  user = models.CharField(max_length=3)

To add a simple lookup:

::

  COUNTRY_CHOICES = (
      ('ES', 'Spain'),
      ('FR', 'France'),
      ('UK', 'United Kingdom'),
  )

  country = models.CharField(max_length=2, choices=COUNTRY_CHOICES)

To create a ``CharField`` which can be ``blank``, specify **only** ``blank``.

A field with ``choices`` will automatically get a get_FOO_display_ method.

DateTimeField
-------------

A date and time field.

::

  created = models.DateTimeField(auto_now_add=True)
  modified = models.DateTimeField(auto_now=True)

To create a ``DateTimeField`` which can be ``blank``, specify ``blank`` **AND**
``null``.

Every ``DateField`` and ``DateTimeField`` that does not have ``null=True``, the
object will have get_next_by_FOO_ and ``get_previous_by_FOO()`` methods,
where ``FOO`` is the name of the field. This returns the next and previous
object with respect to the date field, raising a ``DoesNotExist`` exception
when appropriate.

DecimalField
------------

Has two required arguments:

- ``max_digits`` is the maximum number of digits allowed in the number.  Note
  that this number must be greater than or equal to decimal_places, if it
  exists.
- ``decimal_places`` The number of decimal places to store with the number.

For example, to store numbers up to 999 with a resolution of 2 decimal places:

::

  models.DecimalField(max_digits=5, decimal_places=2)

FileField (and ImageField)
--------------------------

- `playing with upload_to field`_

.. note::

  Don't forget to use
  ``<form enctype="multipart/form-data" method="post" action=".">``
  in your form.

ForeignKey
----------

::

  artist = models.ForeignKey(Musician)

To create an optional ``ForeignKey``, specify ``blank`` **AND** ``null`` e.g:

::

  mentor = models.ForeignKey(
      MentorModel,
      blank=True,
      null=True
  )

Generic Content Type Field
--------------------------

:doc:`../applications/contenttypes`

ImageField
----------

.. note::

  *Prerequisites* Install the Python Imaging Library
  (:doc:`../../python/modules/pillow.rst`).

.. note::

  Don't forget to use
  ``<form enctype="multipart/form-data" method="post" action=".">``
  in your form.

*Sample*

sample_image_field_

::

  class Person(models.Model):
      name = models.CharField(maxlength = 30)
      headshot = models.ImageField(upload_to='pictures')

IntegerField
------------

To create an ``IntegerField`` which can be ``blank``, specify ``blank``
**AND** ``null``.

ManyToManyField
---------------

::

  class DatabaseModule(models.Model):
      code = models.CharField(max_length=10)
      description = models.CharField(max_length=100)
      def __unicode__(self):
          return '%s %s' % (self.code, self.description,)
      class Meta:
          verbose_name = 'Database Module Type'
          verbose_name_plural = 'Database Module Types'

  class DatabaseConfig(models.Model):
      description = models.CharField(max_length=100)
      database_name = models.CharField(max_length=100)
      modules = models.ManyToManyField(DatabaseModule)
      def __unicode__(self):
          return '%s %s' % (self.database_name, self.description,)
      class Meta:
          ordering = ['database_name']
          verbose_name = 'Database Configuration'
          verbose_name_plural = 'Database Configurations'

OneToOneField
-------------

A one-to-one relationship.  Conceptually, this is similar to a ``ForeignKey``
with ``unique=True``, but the "reverse" side of the relation will directly
return a single object.

::

  class Car(models.Model):
      engine = models.OneToOneField(Engine)

::

  >>> from testapp.models import Car, Engine
  >>> c = Car.objects.get(name='Audi')
  >>> e = Engine.objects.get(name='Diesel')
  >>> e.car
  <Car: Audi>

SlugField
---------

::

  slug = models.SlugField(unique=True)

Note:

- The default value for ``max_length`` is 50.
- A ``SlugField`` is supposed to create a unique index for this field, but it
  doesn't seem to unless you put ``unique=True``.
- To auto-populate the slug field add the following to the admin object:

  ::

    class ClubAdmin(admin.ModelAdmin):
        prepopulated_fields = {'slug':('name',),}

TextField
---------

A large text field.

The admin represents this as a ``<textarea>`` (a multi-line input).

URLField
--------

A field for a URL.  If the ``verify_exists`` option is ``False`` (default), the
URL will *NOT* be checked for existence.


.. _`How can I get access to a Django Model field verbose name dynamically?`: http://stackoverflow.com/questions/2429074/how-can-i-get-access-to-a-django-model-field-verbose-name-dynamically
.. _`Model reference`: http://www.djangoproject.com/documentation/model-api/
.. _`Model Style`: http://docs.djangoproject.com/en/dev/internals/contributing/#model-style
.. _`playing with upload_to field`: http://adil.2scomplement.com/2009/01/django-playing-with-upload_to-field/
.. _get_FOO_display: https://docs.djangoproject.com/en/dev/ref/models/instances/#django.db.models.Model.get_FOO_display
.. _get_next_by_FOO: https://docs.djangoproject.com/en/dev/ref/models/instances/#django.db.models.Model.get_next_by_FOO
.. _sample_image_field: http://toybox/hg/sample/file/tip/python/django/sample_image_field/
