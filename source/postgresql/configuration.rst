Configuration
*************

**Note**: Use minimal configuration files as discussed in
http://github.com/jacobian/django-deployment-workshop

Initialise
==========

.. warning:: Probably not a good idea to change the default location.
             Use :doc:`tablespace` instead!!

If you change the location of the ``data_directory``, you will need to
initialise the folder.  To do this, I ran the following command:

::

  sudo -i -u postgres
  /usr/lib/postgresql/9.1/bin/initdb --locale=en_UK.UTF-8 --encoding=UNICODE -d /mnt/cbsvolume/postgresql/9.1/main/

Database
========

From `Ubuntu, Community Documentation, PostgreSQL`_

To start off, we need to change the PostgreSQL ``postgres`` user password; we
will not be able to access the server otherwise.  As the ``postgres`` Linux
user, we will execute the ``psql`` command:

::

  sudo -u postgres psql postgres

Set a password for the "postgres" database role using the command:

::

  \password postgres

For test purposes, I use the password ``postgres``...

Log out of ``psql``:

::

  \q

Log into the default database (using the default ``postgres`` user):

::

  sudo -u postgres psql

...or try:

::

  psql postgres postgres

...or try:

::

  su - postgres
  psql

Create a user

::

  SELECT * FROM pg_user;
  CREATE USER patrick WITH PASSWORD 'password' CREATEDB;

(To delete a user, ``DROP USER patrick;``)

Note: By default in Ubuntu, PostgreSQL is configured to use ``ident sameuser``
authentication for any connections from the same machine.  Essentially this
means that if your Ubuntu username is ``foo`` and you add ``foo`` as a
PostgreSQL user then you can connect to the database without requiring a
password.

Create a database (setting the user we just created as the owner):

::

  CREATE DATABASE mynewdb OWNER patrick;

Log out of ``psql``:

::

  \q

Log into the new database with the new user:

::

  psql mynewdb patrick

For more information on the psql commands, click here... :doc:`psql`.


.. _`Ubuntu, Community Documentation, PostgreSQL`: https://help.ubuntu.com/community/PostgreSQL
