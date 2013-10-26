mod_wsgi
********

Links
=====

- Trac - Install, :doc:`../../trac/install`
- `Installation of mod_wsgi on Windows`_.

Install
=======

Windows
-------

- Download ``apache_2.0.61-win32-x86-no_ssl.msi`` from
  http://httpd.apache.org/download.cgi.

  Note: We use Apache 2.0 for Trac because the python bindings have
  "*not seen much testing*": `Windows Apache 2.2.x`_

- Install Apache.  I installed to:

  ::

    c:\tools\

  Note: This install Apache to ``C:\tools\Apache2\``.

- Test by browsing to http://localhost/

mod_wsgi (Linux)
----------------

::

  sudo apt-get install libapache2-mod-wsgi

mod_wsgi (Windows)
------------------

- Download ``mod_wsgi.so`` from http://adal.chiriliuc.com/mod_wsgi/.

  I downloaded from this folder,
  http://adal.chiriliuc.com/mod_wsgi/revision_726_2.0c4/mod_wsgi_py25_apache20/
  (The latest revision for python 2.5 and Apache 2.0).

- Copy ``mod_wsgi.so`` to the Apache ``modules`` folder.

  On my workstation:

  ::

    copy \download\apache\mod_wsgi.so \tools\Apache2\modules\

- Load the wsgi module.

  Edit the Apache configuration file, ``conf/httpd.conf`` and add:

  ::

    LoadModule wsgi_module modules/mod_wsgi.so

  If you want to, change the logging level:

  ::

    LogLevel info

- Restart Apache.

  Check the ``logs/error.log`` file.  It should contain some references to
  python and WSGI...

Test
====

- Create a folder to contain your WSGI applications.  I created:

  ::

    C:\repository\apache\python\wsgi\

- Create the python script ``my-wsgi-app.wsgi`` in this folder.  Here is the
  script:

  ::

    def application(environ, start_response):
        status = '200 OK'
        output = 'Hello World!'
        response_headers = [('Content-type', 'text/plain'),
                                ('Content-Length', str(len(output)))]
        start_response(status, response_headers)
        return [output]

- Edit ``conf/httpd.conf`` and add one of the following:

  - For a single application:

      ::

        WSGIScriptAlias /myapp "C:/repository/apache/python/wsgi/my-wsgi-app.wsgi"
        <Directory "C:/repository/apache/python/wsgi">
          Order allow,deny
          Allow from all
        </Directory>

    The following URL should run the application: http://localhost/myapp

  - To run multiple applications from a folder:

      ::

        WSGIScriptAlias /wsgi/ "C:/repository/apache/python/wsgi/"
        <Directory "C:/repository/apache/python/wsgi">
          Order allow,deny
          Allow from all
        </Directory>

    Allows access to multiple application in a folder.  In this example, the
    url http://localhost/wsgi/my-wsgi-app.wsgi will run our test
    application.


.. _`Installation of mod_wsgi on Windows`: http://code.google.com/p/modwsgi/wiki/InstallationOnWindows
.. _`Windows Apache 2.2.x`: http://subversion.tigris.org/servlets/ProjectDocumentList?folderID=8100&expandFolder=8100&folderID=91

