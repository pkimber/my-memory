Fixtures
********

Links
=====

- `django-fixture-magic`_
  Utilities to extract and manipulate Django Fixtures
- `Natural keys`_

Fixture
=======

Automatically loading initial data fixtures
-------------------------------------------

From `Automatically loading initial data fixtures`_, If you create a fixture
named ``initial_data.json``, that fixture will be loaded every time you run
``syncdb``.  This is extremely convenient, **but be careful**: remember that
the data will be refreshed every time you run ``syncdb``.  So don't use
``initial_data.json`` for data you'll want to edit.

Create
------

Note: **Probably best to use** `Natural keys`_ (I will update the notes when I
have time).

To create a fixture (assuming you have data in your database):

Copy the output of the following command to a temporary file:

::

  django-admin.py dumpdata product --indent 4 > ~/temp/temp.json
  django-admin.py dumpdata --indent=4 --natural --format=yaml product
  django-admin.py dumpdata --indent=4 --natural --format=yaml auth

Note:

- ``product`` is the name of the application.  For *users*, the application is
  ``auth``.
- ``--indent`` will pretty print the JSON (with 4 character indents).
- ``--traceback`` will give useful error messages allowing you to diagnose
  ``Error: Unable to serialize database``.

Create a ``fixtures`` folder inside your application:

::

  mkdir product/fixtures/

Note: No need to create an ``__init__.py`` file inside this folder.

Copy the temporary file to the ``fixtures`` folder, checking the contents and
giving it a nice name e.g. ``product.json``.

In your test class, add the file-name to the list of fixtures e.g:

::

  class SimpleTest(TestCase):
      fixtures = ['product.json',]

      def test_...

Issues
------

- Make sure you have included the application which contains the fixture file
  in your ``settings.py`` file.
- Make sure to declare the ``fixtures`` attribute before any ``test_``
  functions.
- If the fixture file doesn't exist... then the test will continue without
  complaining...  To solve the problem, create the fixture file.
- **Make sure you are using** ``django.test import TestCase``... as some of the
  other Django test classes do not work with fixtures.


.. _`Automatically loading initial data fixtures`: https://docs.djangoproject.com/en/dev/howto/initial-data/#automatically-loading-initial-data-fixtures
.. _`django-fixture-magic`: https://github.com/davedash/django-fixture-magic
.. _`Natural keys`: https://docs.djangoproject.com/en/dev/topics/serialization/#natural-keys
