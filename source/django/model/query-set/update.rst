QuerySet - Update
*****************

.. highlight:: python

Update
======

::

  Message.objects.filter(read=False).filter(undo_id__gte=0).update(read=True)

In this example, ``read`` is a ``boolean`` field, and ``undo_id`` is an
``IntegerField``.
