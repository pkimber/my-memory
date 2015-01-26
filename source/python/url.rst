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

urlunparse
==========

.. note:: ``urlunparse`` takes a ``tuple`` containing the same six values in
          the same order as ``urlparse``.
::

  from urllib.parse import urlparse
  url = "https://www.facebook.com/?ref=logo"
  urlparse(url)
  ParseResult(scheme='https', netloc='www.facebook.com', path='/', params='', query='ref=logo', fragment='')

  o = urlparse(url)
  urlunparse((o.scheme, o.netloc, '', '', '', ''))
  'https://www.facebook.com'

  from urllib.parse import urlunparse
  urlunparse(('https', 'www.facebook.com', '', '', '', ''))
  'https://www.facebook.com'
