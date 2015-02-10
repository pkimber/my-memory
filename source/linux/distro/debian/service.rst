Service
*******

Setup
=====

Check the service is available in the ``init.d`` folder:

::

  ls -l /etc/init.d/my-service

Create the init process symlinks:

::

  update-rc.d my-service defaults 80

Remove
======

`Removing Unwanted Startup Files or Services in Debian`_.

To remove the service:

::

  update-rc.d -f my-service remove


.. _`Removing Unwanted Startup Files or Services in Debian`: http://www.debianhelp.co.uk/unwanted.htm

