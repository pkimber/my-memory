Backup and Restore
******************

Restore (Command Line)
======================

- To list the name and file groups contained in a backup file:

  ::

    RESTORE FILELISTONLY
        FROM disk = 'C:\backup\mydb.bak'

  Note: You will need to specify the full path for the backup file.

- Using the ``FILELISTONLY`` command, we can now specify new locations
  (``MOVE``) for each of the file groups:

  ::

    RESTORE DATABASE
        mydb
        FROM disk = 'C:\backup\mydb.bak'
        WITH
            MOVE 'ad_server_staging' TO 'C:\repository\microsoft\sqlserver\mydb\mydb.mdf',
            MOVE 'ATTACHMENTS' TO 'C:\repository\microsoft\sqlserver\mydb\attachments.ndf',
            MOVE 'INDEXES' TO 'C:\repository\microsoft\sqlserver\mydb\indexes.ndf',
            MOVE 'ad_server_staging_log' TO 'C:\repository\microsoft\sqlserver\mydb\mydb.ldf'

Note: You will need to specify the full path for the backup file.

Restore (Management Studio)
===========================

To restore the backup, ``backup_200608240045.bak`` into the
new database, ``pjk_700``:

::

  ../../../images/howto/microsoft/sql-server-management-studio-restore-general.gif

**NOTE**: You **must** specify the *Restore As* file names:

::

  ../../../images/howto/microsoft/sql-server-management-studio-restore-options.gif

You can find the *Location* of the ``.mdf`` file by right clicking on the
database (in this example, ``pjk_700``), selecting *Tasks*, *Shrink*,
*Files*...  In this case the files are in:

::

  E:\MSSQL\Data\
