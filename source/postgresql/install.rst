Install
*******

Linux
=====

Debian
------

::

  apt-get install postgresql

Follow the configuration notes..., :doc:`configuration`.

Gentoo
------

http://gentoo-wiki.com/HOWTO_Configure_Postgresql

- The following command should install PostgreSQL 8:

  ::

    emerge -av postgresql

- Create a place where the database and configuration files are stored:

  ::

    mkdir -p /var/lib/postgresql/data
    chown postgres /var/lib/postgresql/data
    su postgres
    /usr/bin/initdb -D /var/lib/postgresql/data

- Start postgresql and add to the default run level:

  ::

    exit
    /etc/init.d/postgresql start
    rc-update add postgresql default

- :doc:`configuration`.

Windows
=======

- Download ``postgresql-8.3.5-2-windows.exe`` from
  http://www.enterprisedb.com/products/pgdownload.do#windows.
- Installation folder:

  ::

    C:\Tools\PostgreSQL\8.3\

- Data directory:

  ::

    C:\repository\PostgreSQL\8.3\data\

- The installer will create a Windows service, ``postgresql-8.3``.  Make
  sure the service is configured as you want it... and make sure it is
  started.
- Make sure you can login to ``psql`` from the programs menu for PostgreSQL.
- Click here for a basic configuration example, :doc:`configuration`.
