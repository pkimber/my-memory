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

mock (without ``py.test``)
==========================

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


.. _`Managing mocks`: http://slides.com/helenst/managingmocks2015/
.. _`pytest-mock`: https://github.com/pytest-dev/pytest-mock/
.. _`unittest.mock`: https://docs.python.org/dev/library/unittest.mock.html
