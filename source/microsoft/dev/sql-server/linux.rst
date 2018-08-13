SQL Server - Linux
******************

Docker
======

::

  docker pull microsoft/mssql-server-linux:2017-latest

::

  sudo docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=<Cognito123>' -p 1433:1433 --name sql1 -d microsoft/mssql-server-linux:2017-latest

.. tip::

  The password for this database is ``<Cognito123>`` **not** ``Cognito123``.

View logs::

  docker logs -f f71a08c580422335b498953bd0e6a9

Run ``sqlcmd``::

  docker exec -it sql1 "bash"
  /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P '<Cognito123>'

Restore Backup
--------------

Create a folder in your Docker container for the backup file::

  docker exec -it sql1 "bash"
  mkdir /var/opt/mssql/backup

Copy the SQL Server backup file to the Docker folder::

  docker cp ~/Downloads/DocRecord.bak sql1:/var/opt/mssql/backup/

List the logical file names and paths inside the backup.
This is done with the ``RESTORE FILELISTONLY`` Transact-SQL statement::

  docker exec -it sql1 "bash"
  /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "<Cognito123>" -Q "RESTORE FILELISTONLY FROM DISK = '/var/opt/mssql/backup/DocRecord.bak'"

Restore the backup::

  docker exec -it sql1 "bash"
  /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "<Cognito123>" -Q "RESTORE DATABASE DocRecord FROM DISK = '/var/opt/mssql/backup/DocRecord.bak' WITH MOVE 'DocRecord' TO '/var/opt/mssql/data/DocRecord.mdf', MOVE 'DocRecord_log' TO '/var/opt/mssql/data/DocRecord_log.ldf'"

Ubuntu 18.04
============

Install ``sqlcmd`` and the Microsoft ODBC Driver for SQL Server::

  sudo -
  curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
  curl https://packages.microsoft.com/config/ubuntu/18.04/prod.list > /etc/apt/sources.list.d/mssql-release.list

  apt-get update
  ACCEPT_EULA=Y apt-get install msodbcsql17
  ACCEPT_EULA=Y apt-get install mssql-tools

From `Install SQL Server and create a database on Ubuntu`_

.. tip::

  I couldn't get this working, so switched to using Docker (see above).

.. tip::

  I had to force install on Ubuntu 18.04 using these instructions,
  `How do I install MS SQL for ubuntu 18.04 LTS?`_::

    apt-get download mssql-server
    sudo dpkg --force-depends -i mssql-server_14.0.3025.34-3.deb
    systemctl restart mssql-server.service
    vim /var/lib/dpkg/status
    # search for 'Package: mssql-server' and change the depends line from
    ...hostname, openssl (>= 1.0.1), openssl (<= 1.1.0), python (<= 2.7.0)...
    # to
    ...hostname, openssl (>= 1.0.1), openssl (< 1.1.1), python (<= 2.7.0)...

Ubuntu 16.04
============

Set-up command line tools::

  cd ~/bin/
  ln -s /opt/mssql-tools/bin/sqlcmd .

Commands
========

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


.. _`How do I install MS SQL for ubuntu 18.04 LTS?`: https://askubuntu.com/questions/1032532/how-do-i-install-ms-sql-for-ubuntu-18-04-lts/1037127#1037127
.. _`Install SQL Server and create a database on Ubuntu`: https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-ubuntu
