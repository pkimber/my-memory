Install
*******

Download
========

Download ``mysql-noinstall-5.0.51a-win32.zip`` from
http://dev.mysql.com/downloads/

Preparation
===========

Vista
-----

If you are installing on Windows Vista it is best to open a port before
beginning the installation:

- To do this first ensure that you are logged in as an administrator.
- go to the Control Panel, and double click the Windows Firewall icon.
- Choose the *Allow a program through Windows Firewall* option and click the
  *Add port...* button.
- Enter MySQL into the *Name* text box and 3306 (or the port of your choice)
  into the *Port number* text box.  Also ensure that the TCP protocol radio
  button is selected.
- If you wish, you can also limit access to the MySQL server by choosing the
  *Change scope* button.

**Note**:

- If you do not open a port prior to installation, you cannot configure the
  MySQL server immediately after installation.
- On Windows Vista, I could only get the ``noinstall`` option to work.
  The ``msi`` and ``setup.exe`` options cannot be configured.  I got this
  error:

  ::

    c:\Program Files\MySQL\MySQL Server 5.0>bin\MySQLInstanceConfig.exe
    The application has failed to start because its side-by-side configuration is incorrect. Please see the application event log for more detail.

  ...and couldn't find any way to solve it.

Install
=======

Linux
-----

::

  sudo apt-get install mysql-server

Windows
-------

- Extract the archive.  I extracted to:

  ::

    c:\tools\mysql-5.0.51a-win32\

- Run MySQL:

  ::

    cd c:\tools\mysql-5.0.51a-win32\
    bin\mysqld.exe --console

  **Note**: If you omit the ``--console`` option, the server writes diagnostic
  output to the error log in the data directory .  The error log is the file
  with the ``.err`` extension.

  If you omit the ``---console`` option, you can shutdown using this command:

  ::

    bin\mysqladmin" -u root shutdown

- Check that MySQL has started successfully.  The console output should finish
  a bit like this:

  ::

    080131 22:41:18 [Note] bin\mysqld.exe: ready for connections.
    Version: '5.0.51a-community'  socket: ''  port: 3306  MySQL Community Edition (GPL)

Test
====

Once the server is running, you can test it using the command:

::

  bin\mysqlshow

