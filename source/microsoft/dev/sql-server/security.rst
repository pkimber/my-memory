Security
********

email
=====

To give a ``SELECT`` only user permission to send database mail, see issues,
EXECUTE permission was denied, sp_send_dbmail, :doc:`issues`.

Roles
=====

+---------------+---------------------------------------------------------------------------------+
| db_datareader | Ability to run a SELECT statement against any table or view in the database.    |
+---------------+---------------------------------------------------------------------------------+
| db_datawriter | Ability to modify via INSERT, UPDATE, or DELETE data in any table or view in    |
|               | the database.                                                                   |
+---------------+---------------------------------------------------------------------------------+
| db_owner      | Complete control of the database (assign permissions, backup and restore).      |
+---------------+---------------------------------------------------------------------------------+
| public        | When a login is granted the ability to access the database, it's automatically  |
|               | placed in the public role, and so long as it has the ability to access the      |
|               | database, it will be in the public role (it can't be removed).                  |
|               | All users for a given database are part of the public role, regardless of other |
|               | role membership                                                                 |
+---------------+---------------------------------------------------------------------------------+

Stored Procedure
================

`SQL Server Security: Fixed Database Roles`_

::

  GRANT EXEC ON <sp> TO rye


.. _`SQL Server Security: Fixed Database Roles`: http://www.sqlservercentral.com/articles/Security/sqlserversecurityfixeddatabaseroles/1231/
