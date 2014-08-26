Factory Boy
***********

.. highlight:: python

Issues
======

If you get a ``no such table`` error::

  django.db.utils.OperationalError: no such table: member_contact

It is because you are not using the ``SubFactory`` correctly.

These will throw an error::

  contact = ContactFactory()
  contact = factory.SubFactory(ContactFactory())

This is the correct version::

  contact = factory.SubFactory(ContactFactory)
