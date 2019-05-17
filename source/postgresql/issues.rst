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
``/etc/shadow``. This can be solved by just adding one::

  echo "postgres:*:9797:0:::::" >> /etc/shadow

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

Windows
=======

Forgotten database password
---------------------------

From `Forgotten PostgreSQL Windows password`_

Find your ``pg_hba.conf`` file
(usually located in ``C:\Program Files\PostgreSQL\9.1\data\pg_hba.conf``)

Update the host lines from::

  host    all             all             127.0.0.1/32            md5
  host    all             all             ::1/128                 md5

to::

  host    all             postgres        127.0.0.1/32            trust
  host    all             postgres        ::1/128                 trust

.. note:: For this to work, these must be the only active lines in the file.

Re-start the Postgres service.

You should now be able to get a SQL prompt without entering a password::

  psql -U postgres

Run this SQL command:

.. code-block:: sql

  ALTER USER postgres PASSWORD 'postgres'

Revert the lines in ``pg_hba.conf`` and re-start the PostgreSQL service.


.. _`Forgotten PostgreSQL Windows password`: https://dba.stackexchange.com/questions/44586/forgotten-postgresql-windows-password
.. _`PostgreSQL setup and configuration for md5 authentication`: http://linuxpoison.blogspot.com/2008/08/postgresql-setup-and-configuration-for.html
