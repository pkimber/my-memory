Install - Apache WSGI
*********************

Links
=====

`How to use Trac with mod_wsgi`_

Install
=======

Install Trac - :doc:`install`

Install Apache with mod_wsgi - :doc:`../apache/http/mod_wsgi`

For the configuration suggested below, you will need to install the
``mod_authz_host`` module.  Apache 2 - Issues, Invalid command 'Order' -
:doc:`../apache/http/issues.html`

Create a folder inside your trac folder.

For my ``my-test-trac`` installation, I created this folder:

::

  C:\repository\trac\my-test-trac\apache\

Inside this folder create the ``trac.wsgi`` script.  Choose the script
depending on whether you want to serve single or multiple-project:

Single Project
--------------

::

  import trac.db.postgres_backend
  trac.db.postgres_backend.PostgreSQLConnection.poolable = False

  import os

  os.environ['TRAC_ENV'] = '/home/web/trac/my-test-trac'
  os.environ['PYTHON_EGG_CACHE'] = '/home/web/trac/my-test-trac/eggs'

  import trac.web.main
  application = trac.web.main.dispatch_request

Multiple Projects
-----------------

::

  import trac.db.postgres_backend
  trac.db.postgres_backend.PostgreSQLConnection.poolable = False

  import os
  os.environ['TRAC_ENV_PARENT_DIR'] = 'C:/repository/trac'
  os.environ['PYTHON_EGG_CACHE'] = 'C:/repository/trac/eggs'

  import trac.web.main

  application = trac.web.main.dispatch_request

For this configuration, you would have multiple projects in the
``C:\\repository\\trac\\`` folder e.g.

::

  C:\repository\trac\core
  C:\repository\trac\jacksons
  C:\repository\trac\williamson

Trac will automatically generate a page where you can select the project.

**Note**:

- Make sure you use forward slashes for the path!
- The two PostgreSQL configuration lines are only required if you are using
  PostgreSQL.

Add the following to your Apache ``conf/httpd.conf`` file:

::

  WSGIScriptAlias /trac "/home/web/trac/my-test-trac/apache/trac.wsgi"
  <Directory /home/web/trac/my-test-trac/apache>
      WSGIApplicationGroup %{GLOBAL}
      Order deny,allow
      Allow from all
  </Directory>

Note: The ``Directory`` configuration is required for Trac because the
Subversion Python bindings, don't always work in python subinterpreters.

Restart Apache and test using this URL: http://localhost/trac

If you have any errors, check the Apache file, ``logs/error.log``.

Click here to set-up :doc:`authentication`


.. _`How to use Trac with mod_wsgi`: http://code.google.com/p/modwsgi/wiki/IntegrationWithTrac
