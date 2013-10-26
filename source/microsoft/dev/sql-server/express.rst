Express
*******

DTS
===

DTS was already installed on my workstation (possibly through Windows Update):

::

  C:\Program Files\Microsoft SQL Server\90\DTS\Binn\DTSWizard.exe

Install
-------

`SQL Server 2005 Express - DTS Confirmed`_:

If it is not installed on your workstation, try the following:

- Download "*Microsoft SQL Server 2005 Express Edition Toolkit*"
  (``SQLEXPR_TOOLKIT.EXE``) from the `SQL Server 2005 Express Edition`_ site.

- Run the installer, I think DTS is included in the *Business Intelligence
  Development Studio*, so make sure you install it using the *Feature
  Selection* screen.

Issue - Connection refused from a Java application.
===================================================

Links
-----

`Configuring SQL Server Express`_ with the default ColdFusion SQL Server JDBC
driver.

`How to connect to SQL Express from downlevel clients`_ (basically anything
that is not using .Net 2.0 or the new SQL Native Client).

Issue
-----

The TCP/IP and Named Pipes protocols are disabled by default upon the
installation of SQL Server Express.

The default TCP/IP port that SQL Server Express listens on may not be 1433.

Solution
--------

To configure a data source for SQL Server Express using the default SQL Server
driver, follow these steps:

- Launch the SQL Server Configuration Manager.
- Expand *Server Network Configuration*.
- Expand Protocols for ``SQLEXPRESS``.
- Enable Named Pipes.
- Enable TCP.
- Select TCP/IP in the right pane.
- Select *Properties*, *IP Addresses*.
- Make "``Enabled``" for all applicable IPs = "``Yes``".
- If the TCP port value is empty, blank out "*TCP Dynamic Ports*" and set *TCP
  Port* to ``1433`` for all applicable IPs.
- Restart SQL Express (Using *Services*).
- The port number can be checked by looking in the log file:

  ::

    C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\LOG\ERRORLOG

  e.g.

  ::

    2008-01-08 12:24:36.94 Server  Server is listening on [ 'any' <ipv4> 50451].

JDBC
----

I connected to the above server using this URL:

::

  jdbc:jtds:sqlserver://127.0.0.1/mydb

...*to connect when using dynamic ports*...

::

  jdbc:jtds:sqlserver://SLINKY:50451/mydb



.. _`SQL Server 2005 Express - DTS Confirmed`: http://cfsilence.com/blog/client/index.cfm/2007/1/16/SQL-Server-2005-Express--DTS-Confirmed
.. _`SQL Server 2005 Express Edition`: http://msdn.microsoft.com/en-gb/express/bb410792.aspx
.. _`Configuring SQL Server Express`: http://kb.adobe.com/selfservice/viewContent.do?externalId=kb400255&sliceId=2
.. _`How to connect to SQL Express from downlevel clients`: http://blogs.msdn.com/sqlexpress/archive/2004/07/23/192044.aspx

