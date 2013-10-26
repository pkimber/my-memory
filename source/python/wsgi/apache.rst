Apache
******

Links
=====

- MOD_WSGI_

Build and Install
=================

- Download ``mod_wsgi-2.0.tar`` from http://modwsgi.googlecode.com/.
- Make sure python, python development packages, gcc, make and ``apxs``
  (or ``apxs2``) are installed.  To install on debian:

  ::

    apt-get install gcc g++
    apt-get install make
    apt-get install python-dev
    apt-get install apache2-threaded-dev

- Unzip and configure

  ::

    tar xf ../download/python/mod_wsgi-2.0.tar
    ./configure

- Compile

  ::

    make

- Install

  ::

    make install

  On my debian system it says, *Libraries have been installed in*:
  ``/usr/lib/apache2/modules``

Configure
=========

- To ``/etc/apache2/apache2.conf`` add:

  ::

    LoadModule wsgi_module /usr/lib/apache2/modules/mod_wsgi.so

- Re-start apache and check the error log (``/var/log/apache2/error.log``),
  you should see a line of the form:

  ::

    Apache/2.2.2 (Unix) mod_wsgi/1.0 Python/2.3.5 configured

Test
====

- `/etc/apache2/apache2.conf`_
- `/home/repository/wsgi/test/test.wsgi`_
- Browse to http://servername/test/wsgi to test the WSGI installation...


.. 23/03/2008 The debian pre-built modules are not installing correctly.
..
.. *Install
..
..   Make sure the <<<mod_wsgi>>> module is available for your Apache installation:
..
.. **Debian
..
..   * <<<mod_wsgi>>> is only currently in unstable, so you have to add a line to
..   <<</etc/apt/sources.list>>>:
..
.. ---
.. deb http://ftp.debian.org/debian/ sid main
.. ---
..
..   * Install the module:
..
.. ---
.. apt-get update
.. apt-get install libapache2-mod-wsgi
.. ---
..
..   []


lighttpd etc
============

Applications written using WSGI can be linked into Apache or
lighttpd_ using http://www.fastcgi.com/:

- see above...
- http://cleverdevil.org/computing/24/python-fastcgi-wsgi-and-lighttpd
  Python, FastCGI, WSGI, and lighttpd}}
- `FastCGI WSGI`_


.. _MOD_WSGI: http://modwsgi.googlecode.com/svn/tags/mod_wsgi-2.0/README
.. _`/etc/apache2/apache2.conf`: ../../misc/howto/python/wsgi/apache2.conf
.. _`/home/repository/wsgi/test/test.wsgi`: ../../misc/howto/python/wsgi/test.wsgi
.. _lighttpd: http://www.lighttpd.net/
.. _`FastCGI WSGI`: http://tools.cherrypy.org/wiki/FastCGIWSGI

