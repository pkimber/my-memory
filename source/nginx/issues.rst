Issues
******

could not build the types_hash
==============================

::

  nginx: [emerg] could not build the types_hash, you should increase either types_hash_max_size: 1024
  nginx: [emerg] could not build the server_names_hash, you should increase server_names_hash_bucket_size: 32

I think this might be an Nginx/Digital Ocean bug, but to solve the problem for now:

::

  http {
      include /etc/nginx/mime.types;

      server_names_hash_bucket_size 64;
      types_hash_max_size 2048;

Proxy
=====

For proxy issues see :doc:`proxy`

Request Entity Too Large
========================

`Documentation - NginxHttpCoreModule`_

Had this error when trying to upload a large file:

::

  nginx 413 Request Entity Too Large

To solve the issue, edit:

::

  /etc/nginx/nginx.conf

...and add in a ``client_max_body_size`` setting:

::

  server {
      listen       80;
      server_name _;
      ...
      client_max_body_size 40m;
  }


.. _`Documentation - NginxHttpCoreModule`: http://wiki.nginx.org/NginxHttpCoreModule#client_max_body_size
