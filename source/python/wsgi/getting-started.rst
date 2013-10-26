Getting Started
***************

Links
=====

- :doc:`links`

Install
=======

- Make sure you have installed :doc:`../distutils/easy-install`!
- If you are running a python version less than 2.5:

  ::

    easy_install wsgiref

- Run the *Hello World* Sample (see below).

Sample
======

- `Hello World with WSGI`_

Install python 2.5 (or above):

Hello World
-----------

Create and run this python script:

::

  from wsgiref.simple_server import make_server, demo_app

  httpd = make_server('', 8000, demo_app)
  print "Serving HTTP on port 8000..."

  httpd.serve_forever()

Open the page, http://localhost:8000/

Simple App
----------

Create and run this in the same way:

::

  class SimpleApp:
      """Produce the same output, but using a class
      """
      def __init__(self, environ, start_response):
          self.environ = environ
          self.start = start_response

      def __iter__(self):
          status = '200 OK'
          response_headers = [('Content-type','text/plain')]
          self.start(status, response_headers)
          yield 'My Own Hello world!\n'

  from wsgiref.simple_server import make_server, demo_app

  httpd = make_server('', 8000, SimpleApp)

  print "Serving HTTP on port 8000..."

  httpd.serve_forever()

Getting Started
---------------

`Why WSGI?`_

- Install :doc:`../distutils/easy-install`.
- Install the components:

  ::

    easy_install yaro selector memento static

- Checkout the sample application from Subversion:
  https://weezy/svn/learn/python/wsgi/wsgitest
- Run the application:

  ::

    \development\learn\python\wsgi\wsgitest\run.py

- View the application at http://localhost:8000/
- While it's running, try changing the string returned by ``controllers.index``
  and refresh the page.  Your change is reflected automatically and you didn't need
  to restart the application.

  Memento accomplishes this by forcing Python to re-import all modules on each HTTP
  request.  This is obviously a bad idea in a production setting but it's great for
  development.

  This application uses the following components:

- yaro_
  Yet Another Request Object (for WSGI).
- selector_
  WSGI middleware for "RESTful" mapping of URL paths to WSGI applications.
- memento_
  WSGI middleware for per request code reloading.

Web Server - Apache, lighttpd etc
=================================

See :doc:`apache`


.. _`Hello World with WSGI`: http://www.rufuspollock.org/archives/120
.. _`Why WSGI?`: http://brodierao.com/journal/why-wsgi/
.. _memento: http://lukearno.com/projects/memento/
.. _selector: http://lukearno.com/projects/selector/
.. _yaro: http://lukearno.com/projects/yaro/
