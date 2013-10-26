Apache
******

Apache with WSGI
================

- Build Mercurial :doc:`build` (to get version 0.9.5 or above) (or
  install :doc:`install` if an up to date version will be installed)...
- Install :doc:`../python/wsgi/apache`.
- `/home/repository/wsgi/mercurial/hgwebdir.wsgi`_
- `/etc/apache2/apache2.conf`_
- `/etc/mercurial/hgrc`_
- `/home/repository/wsgi/mercurial/hgweb.config`_
- Make sure the apache *user* has write access to the mercurial repositories.  See
  *Issues*, *Permission denied* below...

Apache with CGI
===============

Two mercurial repositories:

::

  /home/repository/mercurial/core/
  /home/repository/mercurial/sample/

- `/etc/apache2/apache2.conf`_
- `/home/repository/cgi/mercurial/hgweb.config`_
- `/home/repository/cgi/mercurial/hgwebdir.cgi`_

Issues
======

Permission denied
-----------------

Message on the client when trying to ``push`` changes:

::

  Permission denied: .hg/lock

The apache process on the server did not have permission to update the
repository:

::

  chown -R www-data:www-data /home/repository/merurial/


.. _`/etc/apache2/apache2.conf`: ../../misc/howto/mercurial/apache/wsgi/apache2.conf
.. _`/etc/mercurial/hgrc`: ../../misc/howto/mercurial/apache/wsgi/hgrc
.. _`/home/repository/cgi/mercurial/hgweb.config`: ../../misc/howto/mercurial/apache/cgi/hgweb.config
.. _`/home/repository/cgi/mercurial/hgwebdir.cgi`: ../../misc/howto/mercurial/apache/cgi/hgwebdir.cgi
.. _`/home/repository/wsgi/mercurial/hgweb.config`: ../../misc/howto/mercurial/apache/wsgi/hgweb.config
.. _`/home/repository/wsgi/mercurial/hgwebdir.wsgi`: ../../misc/howto/mercurial/apache/wsgi/hgwebdir.wsgi

