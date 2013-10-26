Issues
******

Links
=====

- `PostgreSQL setup and configuration for md5 authentication`_

cannot retrieve authentication info
===================================

::

  su: Authentication service cannot retrieve authentication info.

indicates that su cannot find an entry for the user postgres in
``/etc/shadow``. This can be solved by just adding one:

::

  echo "postgres:*:9797:0:::::" >> /etc/shadow

is not a valid data directory
=============================


missing or erroneous pg_hba.conf
================================

::

  []java.sql.SQLException: A connection error has occurred: org.postgresql.util.PSQLException: FATAL: missing or erroneous pg_hba.conf file

See :doc:`security`.

role "root" does not exist
==========================

::

  role "root" does not exist
  provided user name (postgres) and authenticated user name (root) do not match
  Peer authentication failed for user "postgres"

I think this was because the ``data_directory`` (see ``postgresql.conf``) was
owned by ``root`` not ``postgres``.


.. _`PostgreSQL setup and configuration for md5 authentication`: http://linuxpoison.blogspot.com/2008/08/postgresql-setup-and-configuration-for.html
