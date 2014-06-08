Does Not Exist
**************

.. highlight:: python

To catch a generic ``DoesNotExist`` exception::

  from django.core.exceptions import ObjectDoesNotExist
  try:
      e = Entry.objects.get(id=3)
      b = Blog.objects.get(id=1)
  except ObjectDoesNotExist:
      print("Either the entry or blog doesn't exist.")
