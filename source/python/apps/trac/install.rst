Install
*******

Links
=====

http://trac.edgewall.org/wiki/TracInstall

Install - Linux
===============

(Assuming you want to use PostgreSQL for your database):

- Install and configure PostgreSQL - :doc:`../../../postgresql/install`
- Install the python ``psycopg2`` module - :doc:`../../pip/install-modules`

Trac:

::

  pip install trac

Install - Windows
=================

python
------

Install python.  I installed python 2.5.1 into:

::

  c:\tools\Python25\

**Note**: Make sure python is added to the system ``PATH``.

setuptools
----------

(For python 2.5) Download ``setuptools-0.6c7.win32-py2.5.exe`` from
http://pypi.python.org/packages/2.5/s/setuptools/

**Note**: Add the ``Scripts`` folder to the system ``PATH`` e.g.
``C:\tools\Python25\Scripts``.

Subversion python binding:
--------------------------

Download ``svn-python-1.4.6.win32-py2.5.exe`` from
http://subversion.tigris.org/servlets/ProjectDocumentList?folderID=91&expandFolder=91&folderID=688

Install (on Windows Vista "*Run as administrator*").

**Note**: These binaries are not compatible with Apache 2.2.  For Apache 2.2
download files from
http://subversion.tigris.org/servlets/ProjectDocumentList?folderID=8100&expandFolder=8100&folderID=91

Genshi
------

Download ``Genshi-0.4.4.win32.exe`` from http://ftp.edgewall.com/pub/genshi/

Install Trac (on Windows Vista "*Run as administrator*").

Trac
----

Download ``Trac-0.11b1.win32.exe`` from
http://trac.edgewall.org/wiki/TracDownload

Install Trac (on Windows Vista "*Run as administrator*").

Setup
=====

Create a folder to hold your Trac projects.  I created:

::

  C:\repository\trac\

::

  /home/web/trac/

Setup the Trac environment for your project:

::

  cd C:\repository\trac\
  trac-admin my-test-trac initenv

::

  cd /home/web/trac/
  trac-admin my-test-trac initenv

When asked for the database connection string, select from the following
formats (depending on your database):

::

  sqlite:db/trac.db
  postgres://trac:admin@/my_test_trac

...you can leave this at the default value.  A SQLite database will be created
in the project folder e.g. ``C:\\repository\\trac\\my-test-trac\\db\\trac.db``.

**Note**: Be sure to include the full path, including the drive letter.

Setup Complete:

The final screen should look a bit like this:

::

  Project environment for 'My Test Trac' created.
  You may now configure the environment by editing the file:
  C:\repository\trac\my-test-trac\conf\trac.ini

Test
====

To test the installation:

::

  tracd --port 8000 c:\repository\trac\my-test-trac

...and browse to http://127.0.0.1:8000/my-test-trac/

Apache and WSGI
===============

See :doc:`install-wsgi`


