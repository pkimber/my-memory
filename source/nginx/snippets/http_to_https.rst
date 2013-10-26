HTTP to HTTPS
*************

From `how can I rewrite all http requests to https`_

::

  http {
      include /etc/nginx/mime.types;
  
      server {
          listen [::]:80;
          return 301 https:/$host$request_uri;
      }
  
      server {
          listen 443 ssl;
  
          ssl_certificate /srv/ssl/ssl-unified.crt;
          ssl_certificate_key /srv/ssl/server.key;


.. _`how can I rewrite all http requests to https`: http://serverfault.com/questions/67316/in-nginx-how-can-i-rewrite-all-http-requests-to-https-while-maintaining-sub-dom
