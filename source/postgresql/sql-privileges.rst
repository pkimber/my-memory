SQL - Privileges
****************

**Note**: Users are created per server not per database.

User
====

I think a user is now a ``role``:

::

  CREATE ROLE patrick WITH PASSWORD 'patrick'
    NOSUPERUSER CREATEDB NOCREATEROLE LOGIN;

The old way to create a new user in a group:

::

  CREATE USER "PJK" IN GROUP "MyUserGroup" PASSWORD 'MyPassword';

Table
=====

To set-up various levels access on a table or view:

::

  GRANT ALL ON TABLE mytable TO "MyAdministrator";
  GRANT ALL ON TABLE mytable TO GROUP "MyUserGroup";
  GRANT SELECT ON TABLE mytable TO GROUP "MyReportGroup";

This command gives full access to all tables in a schema to a user:

::

  GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO patrick;
