Apache HTTP Server
******************

Configuration
=============

::

  /etc/apache2/apache2.conf

Install
=======

::

  apt-get install apache2

Virtual
=======

`Hosting multiple websites with Apache2`_

`Issues to be aware of for lenny - Upgrading apache2`_

- Edit:

  ::

    /etc/apache2/conf.d/virtual.conf

  ...and add the following:

  ::

    #
    #  We're running multiple virtual hosts.
    #
    NameVirtualHost *:80

- Debian has two folders:

  ::

    /etc/apache2/sites-available
    /etc/apache2/sites-enabled

  You are expected to create your host configuration files in
  ``sites-available``...

  Use ``a2ensite`` to create a symbolic link from ``sites-available`` to
  ``sites-enabled``.


.. _`Hosting multiple websites with Apache2`: http://www.debian-administration.org/articles/412
.. _`Issues to be aware of for lenny - Upgrading apache2`: http://www.debian.org/releases/lenny/i386/release-notes/ch-information.en.html#apache2

