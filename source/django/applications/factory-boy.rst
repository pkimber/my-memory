Factory Boy
***********

.. highlight:: python

Many to Many
============

Here is the model::

  products = models.ManyToManyField(Product, related_name='+')

And the factory::

  enrol = StockFactory(products=[product])

  @factory.post_generation
  def products(self, create, extracted, **kwargs):
      if not create:
          # Simple build, do nothing.
          return
      if extracted:
          # A list of products were passed in, use them
          for product in extracted:
              self.products.add(product)

Issues
======

If you get a ``no such table`` error::

  django.db.utils.OperationalError: no such table: member_contact

I have found two reasons why this might be:

1. It is because you are **not** using the ``SubFactory`` correctly.

  These lines will throw an error because the factory is being instantiated
  before the test has started running::

    contact = ContactFactory()
    contact = factory.SubFactory(ContactFactory())

  This is the correct version::

    contact = factory.SubFactory(ContactFactory)

  For more information, see the answer to this question:
  `Factory fails when invoked in definition of another factory`_

2. Your model name starts with the word ``Test`` e.g. ``TestTask``.

   This will cause an error because your factory will be in the ``tests``
   folder and will be called ``TestTaskFactory``.  The test runner (in my case
   ``py.test`` will see the factory and think it is a test.  The database isn't
   set-up at this stage so you will get the ``no such table`` error!


.. _`Factory fails when invoked in definition of another factory`: http://stackoverflow.com/questions/19260642/factory-fails-when-invoked-in-definition-of-another-factory
