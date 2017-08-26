Ember - Issues
**************

Blocked by CORS policy
======================

This seems to affect Google Chrome, but not FireFox.  It looks like Google
Chrome likes to enforce CORS::

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
