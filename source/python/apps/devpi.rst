devpi
*****

http://doc.devpi.net/

#devpi on freenode

.. note::

  Check out https://github.com/pkimber/docs_cloud for my up to date notes...

::

  bin/devpi-ctl status
  bin/devpi-ctl start devpi-server

Issues
======

I kept getting a *Bad request (400)* error with no more information when
running::

  python setup.py clean sdist upload -r dev

It worked perfectly when using ``devpi upload``.  I spent over 3 hours trying
to find why...  but it just started working when I actually used ``devpi`` to
install one of the packages I had uploaded.

WIP
===

10/08/2013
----------

Trying to get the server proxying through nginx.  It appears that ``devpi-server`` is expecting to
run at ``/`` so I had to use this nginx configuration:

::

  location /root/ {
      proxy_pass http://127.0.0.1:3142;
      proxy_set_header X-Real-IP $remote_addr;
  }

I think this should work as long as the site hosted at ``/`` on the server doesn't use the
``/root/pypi/`` path.

I also changed the port and host in ``supervisord.conf``:

::

  [program:devpi-server]
  command=/home/patrick/repo/tool/pi/bin/devpi-server --datadir=/home/patrick/repo/tool/pi/data --refresh=60 --port=3142 --host=127.0.0.1

11/08/2013
----------

Contents of ``~/.pip/pip.conf``:

::

  [global]
  index-url = http://pkimber.net/root/dev/+simple/
