Links
*****

- :doc:`../users/permissions`

Audit
-----

- http://pypi.python.org/pypi/django-secure
  Utilities and a 'linter' to help you make your Django site more secure.

Users
-----

`Django Forgot Password`_

`django-captchas`_ ImageCaptcha and ReverseCaptcha solution.

OpenID

- `django-openid`_ OpenID tools for Django.
- `how i (finally) got openid and django working together`_

`django-registration`_ A simple, portable, generic user-registration
application for Django projects.  Workflow follows a simple pattern:

- A user signs up for a new account, which will be inactive by default.
- An email is sent to the address they used to register, containing an
  activation link.
- Once they click the activation link, the account becomes active and they
  can log in as normal.

`David Cramer: Logging In With Email Addresses in Django`_

http://opensource.washingtontimes.com/projects/django-clickpass/

Secret Key
----------

To generate a secret key, see :doc:`../applications/extensions`

SSL
---

- `Red Robot Studios Part 3: Securing Django with SSL`_.
- `ContributedMiddleware: SSLMiddleware.2.py`_
- `Info about SSL redirect middleware`_.
- `SSL Middleware for Webfaction`_ (see the notes ref admin).


.. _`ContributedMiddleware: SSLMiddleware.2.py`: http://code.djangoproject.com/attachment/wiki/ContributedMiddleware/SSLMiddleware.2.py
.. _`David Cramer: Logging In With Email Addresses in Django`: http://www.davidcramer.net/code/224/logging-in-with-email-addresses-in-django.html
.. _`Django Forgot Password`: http://blog.montylounge.com/2009/jul/12/django-forgot-password/
.. _`django-captchas`: http://code.google.com/p/django-captchas/
.. _`django-openid`: http://code.google.com/p/django-openid/
.. _`django-registration`: http://code.google.com/p/django-registration/
.. _`how i (finally) got openid and django working together`: http://linuxuser.at/how-i-finally-got-openid-and-django-working-together
.. _`Info about SSL redirect middleware`: http://code.google.com/p/mango-py/wiki/SSLRedirect
.. _`Red Robot Studios Part 3: Securing Django with SSL`: http://www.tangerinesmash.com/2009/red-robot-studios-part-3-securing-django-ssl/
.. _`SSL Middleware for Webfaction`: http://www.djangosnippets.org/snippets/240/
