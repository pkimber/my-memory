Mock
****

.. highlight:: python

.. tip:: If you have any issues with ``patch`` not working as expected, check
         the notes ref using ``mock`` (without ``py.test``) below...

The `unittest.mock`_ library is included with python 3.

To use the mock module with ``py.test``, install the `pytest-mock`_ module::

  pip install pytest-mock

Examples (using ``py.test``)
============================

::

  @pytest.mark.django_db
  def test_post_card_refresh(client, mocker):
      mocker.patch('stripe.Customer.create')

Exception
---------

::

  from unittest import mock

  @pytest.mark.django_db
  def test_process_payments_fail(mocker):
      with mock.patch('stripe.Customer.create') as mock_customer:
          mock_customer.side_effect = CheckoutError('Mock')

Issues
======

I was using ``with mock`` and put the code I was testing after the ``with``
block... so there was no mocking by the time my code was running!

mock (without ``py.test``)
==========================

method
------

Using ``mock`` with ``py.test`` appears to stop ``mock`` working as documented.

If you have any issues, try ignoring the ``mocker`` fixture::

  from unittest import mock

  with mock.patch('stripe.Customer.retrieve') as mock_retrieve:
      mock_retrieve.return_value = {
          'default_card': '1234',
          'cards': {
              'data': [
                  {
                      'id': '1234',
                      'exp_month': '8',
                      'exp_year': '1986',
                  },
              ],
          },
      }

Thank you Helen Sherwood-Taylor for your excellent talk on `Managing mocks`_

object
------

I was testing some code in another module.  The import and code in the other
module looked like this::

  from django.core import mail

  msg = mail.EmailMultiAlternatives(
  # ... do some work...
  for resp in msg.mandrill_response:

Here is the test code::

  from unittest import mock

  with mock.patch('django.core.mail.EmailMultiAlternatives') as mock_mail:
      mock_mail.return_value.mandrill_response = [{
          "email": "abc@test.com",
          "status": "rejected",
          "_id": "123",
          "reject_reason": "hard-bounce"
      }]

.. note:: I was surprised to see that setting up the return value for the
          ``mandrill_response`` was written with the ``return_value`` before
          the method name.

.. note:: You have to patch the correct import path (see `Where to patch`_).
          I spent hours trying to find where to patch, but the issue was a
          completely different one (I hadn't got my test code inside the
          ``with`` block).


.. _`Managing mocks`: http://slides.com/helenst/managingmocks2015/
.. _`pytest-mock`: https://github.com/pytest-dev/pytest-mock/
.. _`unittest.mock`: https://docs.python.org/dev/library/unittest.mock.html
.. _`Where to patch`: https://docs.python.org/dev/library/unittest.mock.html#where-to-patch
