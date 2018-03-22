django-cloudfiles
*****************

Issues
======

http://github.com/rossdakin/django-cloudfiles/issues/#issue/1

Not sure if this is an issue or not, but we recently had an issue where the
hash value wasn't being read, so every file was being uploaded every time.  We
then had time-out issues etc.

It looks like the header key for the hash value was being changed from:

::

    X-Object-Meta-django_cloudfiles_modified_hash

to:

::

    X-Object-Meta-django-cloudfiles-modified-hash

To solve the issue, I edited:

::

    django_cloudfiles/management/cloudfile.py

...and changed:

::

    MOD_HASH_NAME = 'django_cloudfiles_modified_hash'

to:

::

    MOD_HASH_NAME = 'django-cloudfiles-modified-hash'



