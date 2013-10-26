Cookies
*******

Get
===

::

  def my_view(request):
      if SHOP_COOKIE in request.COOKIES:
          cookie_value = request.COOKIES.get(SHOP_COOKIE)

Set
===

::

  from django.http import HttpResponseRedirect

  def my_view(request):
      # ...
      response = HttpResponseRedirect(url)
      # expire in one year:
      response.set_cookie(SHOP_COOKIE, 'cookie-value', max_age=365*24*60*60)
      return response

Subdomain
=========

I wanted a login to a domain to propogate to sub-domains...

e.g. set-up a test site, ``testbox.com``, with sub-domains, ``uk.testbox.com``
and ``us.testbox.com``:

- ``apache2.conf``

  ::

    <VirtualHost *:80>
        ServerName testbox.com
        ServerAlias uk.testbox.com
        WSGIScriptAlias / /home/web/sample_django_authentication/apache/django.wsgi
    </VirtualHost>

    <VirtualHost *:80>
        ServerName us.testbox.com
        WSGIScriptAlias / /home/web/sample_django_authentication/apache/django_us.wsgi
    </VirtualHost>

- Using the same source code, but different ``settings.py`` files e.g:

  ::

    # settings.py
    SITE_ID = 1
    SESSION_COOKIE_DOMAIN = '.testbox.com'

    # settings_us.py
    SITE_ID = 2
    SESSION_COOKIE_DOMAIN = '.testbox.com'

- It took me ages to get this working, but the problem is all to do with the
  browser.  To get the browser to accept the cross-domain cookie:

  - We need to convince the browser to accept the
    ``SESSION_COOKIE_DOMAIN``.  This is a bit complicated - and is browser
    specific, but this article explains it nicely:
    `How to make sure the cookies don't burn your fingers?`_

    ... but, to note, the browser will not accept a simple
    ``SESSION_COOKIE_DOMAIN`` name of ``.testbox`` (i.e. without the
    ``.com`` bit)...

    Also see Trac ticket `SESSION_COOKIE_DOMAIN = '.localhost' cookie problem`_... in particular the
    second comment by *mtredinnick*.

  - I would guess that the URL also has to match the
    ``SESSION_COOKIE_DOMAIN`` name.  So make sure the address in the
    browser e.g. http://us.testbox.com/ matches the
    ``SESSION_COOKIE_DOMAIN`` name e.g. ``.testbox.com``.

    I had to update ``apache2.conf`` and my ``/etc/hosts`` file, to make
    everything work correctly.


.. _`How to make sure the cookies don't burn your fingers?`: http://my.opera.com/yngve/blog/show.dml/267415
.. _`SESSION_COOKIE_DOMAIN = '.localhost' cookie problem`: http://code.djangoproject.com/ticket/10560

