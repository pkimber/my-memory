Rest Framework
**************

.. highlight:: python

http://www.django-rest-framework.org/

Install
=======

::

  pip install djangorestframework

Field
=====

::

  DecimalField(max_digits=6, decimal_places=2)

Serializer
==========

To see the automatically generated serializer for a model::

  # django-admin.py shell
  from contact.serializers import AddressSerializer
  print(str(AddressSerializer())

Testing
=======

This looks like a useful Chrome add-in: http://www.getpostman.com/
