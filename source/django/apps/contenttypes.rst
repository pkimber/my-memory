contenttypes
************

.. highlight:: python

Links
=====

- contenttypes_

.. _contenttypes: https://docs.djangoproject.com/en/dev/ref/contrib/contenttypes/

Model
=====

::

  from django.contrib.contenttypes.fields import GenericForeignKey
  from django.contrib.contenttypes.models import ContentType

  class MyModel(models.Model):
      content_type = models.ForeignKey(ContentType, null=True)
      object_id = models.PositiveIntegerField(null=True)
      content_object = GenericForeignKey()

  >>> from django.contrib.auth.models import User
  >>> user_row = User.objects.get(username='Guido')
  >>> my_row = MyModel()
  >>> my_row.content_object=user_row
  >>> my_row.save()
  >>> my_row.content_object
  <User: Guido>

QuerySet
========

::

  from django.contrib.auth.models import User
  from django.contrib.contenttypes.models import ContentType

  user_row = User.objects.get(username='Guido')

  my_row = MyModel.objects.get(
      content_type=ContentType.objects.get_for_model(user_row),
      object_id=user_row.pk
  )

Unique
======

From `How can I make and enforce a generic OneToOne relation in django`_::

  class Meta:
      unique_together = ('object_id', 'content_type')


.. _`How can I make and enforce a generic OneToOne relation in django`: http://stackoverflow.com/questions/4893823/how-can-i-make-and-enforce-a-generic-onetoone-relation-in-django
