Set
***

.. highlight:: python

Sets cannot have multiple occurrences of the same element::

  pks = set()
  for contact in Contact.objects.all():
      pks.add(contact.pk)

  # convert the set to a list and sort.
  result = list(pks)
  result.sort()
