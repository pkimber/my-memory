Ember - Issues
**************

.. highlight:: javascript

Blocked by CORS policy
======================

This seems to affect Google Chrome, but not FireFox.  It looks like Google
Chrome likes to enforce CORS:

.. code-block:: bash

  XMLHttpRequest cannot load http://localhost:8000/api/contacts.
  Redirect from 'http://localhost:8000/api/contacts'
  to 'http://localhost:8000/api/contacts/'
  has been blocked by CORS policy:
  No 'Access-Control-Allow-Origin' header is present on the requested resource.
  Origin 'http://localhost:4200' is therefore not allowed access.

To solve the issue, use FireFox or start an instance of Chrome using this
command line:

.. code-block:: bash

  google-chrome --user-data-dir=~/repo/temp/disable-web-security --disable-web-security

Resource Type
=============

This issue is somehow linked to the model name in Ember and the model name in
Django.  It would be nice if they were the same, or mapped automatically.

My router has the following code:

.. code-block:: python

  router.register(r'contacts', ContactViewSet)

I am sure I will work it out soon!

Here is the error:

.. code-block:: bash

  The resource object's type (contacts) is not the type that
  constitute the collection represented by the endpoint (Contact).

To solve the issue, I added the ``resource_name`` to the ``ModelViewSet``:

.. code-block:: python

  class ContactViewSet(ModelViewSet):
      resource_name = 'contacts'
      queryset = Contact.objects.all()
      serializer_class = ContactSerializer

.. note:: I tried adding ``JSON_API_PLURALIZE_RELATION_TYPE = True`` to
          ``settings/base.py``, but this didn't help.
