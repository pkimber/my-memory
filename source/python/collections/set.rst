Set
***

.. highlight:: python

Constructor::

  set(['COS-0001', 'COS-0002', 'COS-0003'])

Comprehension::

  {obj.code for obj in qs}

Add / append::

  batch_invoices|invoice_uuids

Difference::

  batches.difference(batch_uuids)

Common to both sets::

  invoice_issues.intersection(batch_invoices)

Sets cannot have multiple occurrences of the same element::

  pks = set()
  for contact in Contact.objects.all():
      pks.add(contact.pk)

  # convert the set to a list and sort.
  result = list(pks)
  result.sort()
