URL
***

.. highlight:: python

::

  from urllib.parse import urlparse

  >>> urlparse('https://www.pkimber.net/accounts/login.html?next=/ticket/700/')
  ParseResult(scheme='https', netloc='www.pkimber.net', path='/accounts/login.html', params='', query='next=/ticket/700/', fragment='')
  >>> urlparse('https://www.pkimber.net/accounts/login.html?next=/ticket/700/').path
  '/accounts/login.html'

::

  from posixpath import basename

  >>> basename(urlparse('https://www.pkimber.net/accounts/login.html?next=/ticket/700/').path)
  'login.html'
