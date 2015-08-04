Mock
****

.. highlight:: python

The `unittest.mock`_ library is included with python 3.

To use the mock module with ``py.test``, install the `pytest-mock`_ module::

  pip install pytest-mock

Example (using ``py.test``)
===========================

::

  @pytest.mark.django_db
  def test_post_card_refresh(client, mocker):
      mocker.patch('stripe.Customer.create')


.. _`pytest-mock`: https://github.com/pytest-dev/pytest-mock/
.. _`unittest.mock`: https://docs.python.org/dev/library/unittest.mock.html
