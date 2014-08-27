Factory Boy
***********

.. highlight:: python

Issues
======

If you get a ``no such table`` error::

  django.db.utils.OperationalError: no such table: member_contact

I have found two reasons why this might be:

1. It is because you are **not** using the ``SubFactory`` correctly.

  These lines will throw an error::

    contact = ContactFactory()
    contact = factory.SubFactory(ContactFactory())

  This is the correct version::

    contact = factory.SubFactory(ContactFactory)

2. Your model name starts with the word ``Test`` e.g. ``TestTask``.

   This will cause an error because your factory will be in the ``tests``
   folder and will be called ``TestTaskFactory``.  The test runner (in my case
   ``py.test`` will see the factory and think it is a test.  The database isn't
   set-up at this stage so you will get the ``no such table`` error!
