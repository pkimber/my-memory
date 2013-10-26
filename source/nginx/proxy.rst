Proxy
*****

Issues
======

I had nightmare issues getting a simple proxy to ``proxypypi`` working.  I am running ``proxypypi``
as ``patrick`` and just trying to get nginx to proxy requests to it.

To solve the problem, I needed to add the ``/`` on the end of both bits of the path i.e:

::

    location /pypi/ {
        proxy_pass http://127.0.0.1:8000/;
    }

This prevents nginx from passing the ``pypi`` bit to the service.
