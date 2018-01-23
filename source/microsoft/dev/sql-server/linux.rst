SQL Server - Linux
******************

From `Install SQL Server and create a database on Ubuntu`_

Set-up command line tools::

  cd ~/bin/
  ln -s /opt/mssql-tools/bin/sqlcmd .

Status::

  systemctl status mssql-server

``sqlcmd``::

  sqlcmd -S localhost -U SA -P 'Your Password'

Restore

.. warning:: When you do a SQL Server backup, be sure to select
             *Media Options*, *Overwrite all existing backup sets* (or find
             some other way to restore the latest backup)!

::

  # Copy the backup file to the SQL Server backup folder
  sudo mv ~/Downloads/MyDB.bak /var/opt/mssql/backup/

  sqlcmd -S localhost -U SA -P 'Your Password'

  # Restore 'MyDB' backup
  RESTORE DATABASE MyDB
  FROM DISK = '/var/opt/mssql/backup/MyDB.bak'
  WITH MOVE 'MyDB' TO '/var/opt/mssql/data/MyDB.mdf',
  MOVE 'MyDB_Log' TO '/var/opt/mssql/data/MyDB_Log.ldf'
  GO

  # Verify
  SELECT Name FROM sys.Databases
  GO

  USE MyDB
  SELECT * FROM MyTable
  GO


.. _`Install SQL Server and create a database on Ubuntu`: https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-ubuntu
