Validation
**********

Links
=====

- `Validating objects`_
- `Validators`_
- See ``sample/python/django/sample_model_validation``.

Sample
======

(very early sample)

::

  from django.core.exceptions import ValidationError
  from django.db import models

  def valid_story_start(value):
      """ See 'validators' below... """
      if 'Once upon' not in value and 'One day' not in value:
          raise ValidationError("Your article must start with 'Once upon' or 'One day'.  '%s' is NOT good enough!" % value)

  class Article(models.Model):
      author = models.CharField(max_length=3)
      published = models.DateField()
      text = models.TextField(validators=[valid_story_start])
      comment = models.TextField()

      class Meta:
          ordering = ['published']
          verbose_name = 'Article'
          verbose_name_plural = 'Articles'

      def clean(self):
          """
          This method should be used to provide custom model validation, and to
          modify attributes on your model if desired.
          """
          if 'PJK' not in self.author:
              raise ValidationError('Only PJK can author articles.')


.. _`Validating objects`: http://docs.djangoproject.com/en/1.2/ref/models/instances/#validating-objects
.. _`Validators`: http://docs.djangoproject.com/en/1.3/ref/validators/
