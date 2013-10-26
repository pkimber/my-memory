Trac - Build
************

Links
=====

`Developer setup for Trac`_

Build Environment
=================

Note: Following this procedure will create a folder, ``trac``, in the
development folder:

::

  easy_install virtualenv
  cd \development\
  virtualenv trac
  cd trac
  Scripts\activate.bat

SVN
===

Checkout from Subversion:

::

  svn co http://svn.edgewall.org/repos/trac/trunk/ trac-trunk
  svn co http://svn.edgewall.org/repos/genshi/trunk/ genshi-trunk

Build
=====

::

  cd trac-trunk
  python setup.py develop
  cd ../genshi-trunk
  python setup.py develop
  cd ..

Trac - Test Environment
=======================

::

  trac-admin test initenv

**Note**: Press return for every option.

Permissions
===========

::

  trac-admin test permission add anonymous TRAC_ADMIN

Installing the trackdeveloperplugin
===================================

::

  svn co http://trac-hacks.org/svn/tracdeveloperplugin/trunk/ tracdeveloperplugin
  cd tracdeveloperplugin
  python setup.py bdist_egg
  copy dist\*.egg ..\test\plugins
  cd ..

Starting trac in development mode
=================================

::

  cd \development\trac\
  Scripts\activate.bat
  tracd -r --port 8000 test

Note: You only need to run the ``activate.bat`` file once per session.

Other stuff
===========

http://127.0.0.1:8000/test

- Go to web admin
- Hit the admin link

- Logging

  - Set type to *Console*.
  - level to *Debug*.

Authentication
==============

If you need an authenticated user for testing purposes:

Create a password file (you will need Apache installed to create one of these):

::

  \tools\Apache2\bin\htpasswd.exe -c apache\virtualtrac.htpasswd pat
  \tools\Apache2\bin\htpasswd.exe apache\virtualtrac.htpasswd dan

Note: You don't need the ``-c`` option after the password file is created.

Start trac, passing in the location of the password file:

::

  cd \development\trac\
  Scripts\activate.bat
  tracd -r --port 8000 --basic-auth=test,c:\development\trac\apache\virtualtrac.htpasswd,c:\development\trac\test test

Note: You only need to run the ``activate.bat`` file once per session.

For more information see `Tracd, Using Authentication`_.


.. _`Developer setup for Trac`: http://trac.edgewall.org/wiki/TracDev/DevelopmentEnvironmentSetup
.. _`Tracd, Using Authentication`: http://trac.edgewall.org/wiki/TracStandalone
