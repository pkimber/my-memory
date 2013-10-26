nginx
*****

Note: This page contains some old notes.  Check out the following links first:

- :doc:`../../python/apps/supervisor`
- :doc:`../../python/apps/snippets/supervisor-uwsgi`
- :doc:`../../python/wsgi/uwsgi/install`

_______________________________________________________________________________

We need to put ``nginx`` in front of Apache to avoid the situation where Apache
is waiting for a slow client (e.g. mobile phone) to accept data.  ``nginx`` can
very quickly accept the full response from Apache and allow Apache to get on
with another task.

Links
=====

:doc:`deploy` (continued)...

Install
=======

::

  apt-get install nginx

Configuration
=============

- Copy in the default configuration:

  ::

    cd /etc/nginx/
    rm -rf conf.d/ fastcgi_params koi-* nginx.conf sites-* win-utf
    ln -s /home/web/sample_django_authentication/nginx/nginx.conf .

  Note:  The ``rm`` command removes all files in the folder apart from
  ``mime.types``.

- Update the server name in the ``nginx/nginx.conf`` file:

  ::

    upstream testbox.com {

    location / {
        proxy_pass http://testbox.com;

- Update the Apache configuration so it listens only on the internal IP
  address:

  ::

    Listen 10.119.55.96:8000
    NameVirtualHost 10.119.55.96:8000

- Update the Apache virtual host configuration (if relavant) e.g:

  ::

    <VirtualHost 10.119.55.96:8000>
        ServerName testbox.com
        ServerAlias uk.testbox.com
        WSGIScriptAlias / /home/web/sample_django_authentication/apache/django.wsgi
    </VirtualHost>

    <VirtualHost 10.119.55.96:8000>
        ServerName us.testbox.com
        WSGIScriptAlias / /home/web/sample_django_authentication/apache/django_us.wsgi
    </VirtualHost>

- Update the IP addresses in the ``nginx/nginx.conf`` file e.g:

  ::

    upstream testbox.com {
        server 10.119.55.96:8000;
        }

  Note: Check out this `nginx.conf`_ file if you are setting up sub-domains.

Admin Media
===========

- Find the folder where your Django admin media is stored.  On my server it
  was here:

  ::

    /usr/lib/python2.5/site-packages/django/contrib/admin/media/

- Update the ``nginx.conf`` file for the location of your media files e.g:

  ::

    # Serve media directly out of Nginx for performance
    location /media {
        alias /home/web/media;
    }

- Create a symbolic link to your media folder:

  ::

    cd /home/web/
    ln -s /usr/lib/python2.5/site-packages/django/contrib/admin/media/ .

- Re-start nginx and check your admin media is available.  You might like to
  double check the admin media path in your Django ``settings.py`` file:

  ::

    ADMIN_MEDIA_PREFIX = '/media/'

Next...
=======

doc:`deploy` (continued)...


.. _`nginx.conf`: http://toybox/hg/env/config/nginx/nginx.conf.sub-domain
