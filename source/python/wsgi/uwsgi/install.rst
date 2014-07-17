uWSGI
*****

Note: For the examples below, I have a user on my system called ``web``.  I put
the projects in the home folder (this might be a security risk, so check before
deploying customer code in this way)...

Install
=======

Prerequisites - Debian
----------------------

::

  sudo apt-get install build-essential python-dev

emperor
-------

::

  sudo -i -u web
  mkdir /home/web/repo/uwsgi/

  cd /home/web/repo/uwsgi/
  virtualenv venv_uwsgi
  . venv_uwsgi/bin/activate
  pip install uwsgi

  mkdir /home/web/repo/uwsgi/vassals/
  mkdir /home/web/repo/uwsgi/log/

To start the uWSGI Emperor::

  sudo -i -u web
  . /home/web/repo/uwsgi/venv_uwsgi/bin/activate
  uwsgi --emperor /home/web/repo/uwsgi/vassals/

To start the uWSGI Emperor using :doc:`../../apps/supervisor`, see
:doc:`../../apps/snippets/supervisor-uwsgi`

Configure each application
--------------------------

Create an ``ini`` file for each of your applications (e.g. for the ``whatson``
app - built using Django 1.4)::

  vim /home/web/repo/uwsgi/vassals/whatson.ini

Sample contents::

  [uwsgi]
  chdir = /home/web/repo/wcc/whatson
  env = DJANGO_SETTINGS_MODULE=example.settings
  logto = /home/web/repo/uwsgi/log/whatson.log
  master = true
  module = example.wsgi
  pythonpath = /home/web/repo/wcc/whatson
  socket = 127.0.0.1:3031
  virtualenv = /home/web/repo/wcc/whatson/venv

Configure nginx
---------------

Here is the ``nginx.conf`` file::

  user www-data;
  error_log /var/log/nginx/error.log;
  pid /var/run/nginx.pid;

  worker_processes 4;
  events {
      worker_connections 100;
  }

  http {
      include /etc/nginx/mime.types;

      server {
          listen 80;

          location /django/static {
              alias /home/web/repo/wcc/whatson/web_static/;
          }

          location /django {
              uwsgi_pass       127.0.0.1:3031;
              include          uwsgi_params;
              uwsgi_param      SCRIPT_NAME /django;
              uwsgi_modifier1  30;
          }

          location / {
              alias /var/www/pkimber.net/;
          }
      }
  }

Note: This is probably not a great config - it is just the first one which
worked for me!
