User
****

Create
======

From *S*, you can create new db users easily with the following script.

Run the script against the target database after replacing ``@@user`` with
the required username and ``@@password`` with the password:

::

  CREATE LOGIN @@user WITH PASSWORD=N'@@password', CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
  GO
  ALTER LOGIN @@user ENABLE
  GO
  CREATE USER @@user FOR LOGIN @@user WITH DEFAULT_SCHEMA=[dbo]
  GO
  EXEC sp_addrolemember 'db_owner', '@@user'
  GO
  EXEC sp_addrolemember 'db_datareader', '@@user'
  GO
  EXEC sp_addrolemember 'db_datawriter', '@@user'
  GO

