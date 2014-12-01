Requests
********

.. highlight:: python

To check if the response contains ``json``, I tried this::

  if response.content:
      self._json(f, response.json(), 'Response')
