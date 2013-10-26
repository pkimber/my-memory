mod_python
**********

Download
========

Download ``mod_python-3.3.1.win32-py2.5-Apache2.2.exe`` from
http://mirror.public-internet.co.uk/ftp/apache/httpd/modpython/win/3.3.1/

Install
=======

- Install Apache HTTP Server version 2.2 and python 2.5.
- Install ``mod_python-3.3.1.win32-py2.5-Apache2.2.exe`` (just run the
  installer).

Configuration
=============

- Edit the Apache configuration file ``conf/httpd.conf``.
- Find where other ``LoadModule`` lines are and add this:

  ::

    LoadModule python_module modules/mod_python.so

Testing
=======

`Testing mod_python`_

- Create a ``test`` folder inside your Apache ``htdocs`` folder e.g:

  ::

    S:\Software\Apache2.2\htdocs\test\

- Create a test application, ``mptest.py`` inside the ``test`` folder:

  ::

    from datetime import datetime
    from mod_python import apache

    def handler(req):
        req.content_type = 'text/plain'
        req.write("Hello World (from mod_python)!\n")
        req.write(datetime.today().strftime("%a %d %b %Y %H:%M:%S"))
        return apache.OK

- Add the following to the Apache configuration file, ``conf/httpd.conf``:

  ::

    LoadModule python_module modules/mod_python.so

    <Directory "C:/Tools/Apache2.2/htdocs/test">
        AddHandler mod_python .py
        PythonHandler mptest
        PythonDebug On
    </Directory>

- Re-start the Apache server and browse to the following URL:

  http://localhost:8090/test/mptest.py


.. _`Testing mod_python`: http://www.modpython.org/live/current/doc-html/inst-testing.html

