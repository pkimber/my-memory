Issues
******

.. highlight:: python

JSON API
========

``ResourceRelatedField``
------------------------

I had so many issues trying to get the ``addresses`` returned by the
``ContactSerializer`` in our ``contact`` app::

  addresses = serializers.ResourceRelatedField(many=True, read_only=True)

I finally got something working, by matching the ``related_name`` on the
``ContactAddress`` model field i.e::

    contact = models.ForeignKey(
        Contact,
        related_name='addresses',
        on_delete=models.CASCADE,
    )
