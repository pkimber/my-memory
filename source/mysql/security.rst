Security
********

**Note**: MySQL appears to consider ``localhost`` as different to
``127.0.0.1``, so check the existing configuration if you have any problems...

Root Password
=============

- `Setting a root password for MySQL`_.

To change the root password:

::

  cd C:\Program Files\MySQL\MySQL Server 5.1\bin
  mysql -u root mysql
  mysql> SET PASSWORD FOR root@localhost=PASSWORD('my-password');
  Query OK, 0 rows affected (0.00 sec)

Note: If using Linux and you get ``Access denied`` issues, then check out the
:doc:`issues`...

User
====

Create
------

`MySQL create user`_

::

  CREATE USER 'patrick'@'localhost' IDENTIFIED BY 'my-password';
  GRANT SELECT, INSERT, UPDATE, DELETE ON *.* TO 'patrick'@'localhost';

To grant all permissions:

::

  GRANT ALL ON *.* TO 'patrick'@'localhost';

**Note**:

- See *Network* below...
- If connecting from a client, then probably worth logging in and out
  before re-trying an operation as the login credentials appear to be cached
  for a session...

List
----

To show the permissions for a user:

::

  SHOW GRANTS FOR 'patrick'@'localhost';

To list all users:

::

  SELECT Host, User, Password FROM mysql.user;

Network
-------

If a user needs to access the server from another machine on the network,
then you need to create them with that host address e.g.

::

  CREATE USER 'patrick'@'192.168.11.66' IDENTIFIED BY 'admin';

If the user needs access from ``localhost`` **AND** from all workstations on
the network, then try the following:

::

  GRANT ALL ON hibernate.* TO 'testuser'@'%' IDENTIFIED BY 'testuser';
  GRANT ALL ON hibernate.* TO 'testuser'@'localhost' IDENTIFIED BY 'testuser';

For details, see `MySQL error 1045(28000): Access denied for user`_.


.. _`Setting a root password for MySQL`: http://www.ricocheting.com/server/mysql_password.html
.. _`MySQL create user`: http://dev.mysql.com/doc/refman/5.1/en/adding-users.html
.. _`MySQL error 1045(28000): Access denied for user`: http://tech.zhenhua.info/2009/01/mysql-error-104528000-access-denied-for.html

