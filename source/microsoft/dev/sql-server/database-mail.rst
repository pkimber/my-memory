Database Mail
*************

Links
=====

- sp_send_dbmail_ Sends an e-mail message to the specified recipients.
- Sample SQL Commands:

  ::

    ../../../misc/howto/microsoft/sql-server-database-mail-sample-command.sql

Configure
=========

Open *SQL Server Management Studio*, connect to the server, open the
*Management* node, right click on *Database Mail* and select
*Configure Database Mail*.

To edit an existing configuration, select *Manage Database Mail accounts and
profiles*, click *Next*, select *View, change, or delete an existing account*,
click *Next*:

::

  ../../../images/howto/microsoft/sql-server-database-mail-config-manage-existing-account.gif

Create Report
=============

- Open *SQL Server Management Studio*, connect to the server, open the *SQL
  Server Agent* node, right click on *Jobs* and select *New Job...*
- Give the job a name:

  ::

    ../../../images/howto/microsoft/sql-server-database-mail-new-job-general.gif

- Select the *Steps* page and click *New*...
- Give the step a name, remember to select the database for the report.  For
  some ideas see:

  ::

    ../../../misc/howto/microsoft/sql-server-database-mail-sample-command.sql
    ../../../misc/howto/microsoft/sql-server-database-mail-sample-command-2.sql

  ::

    ../../../images/howto/microsoft/sql-server-database-mail-new-job-step.gif]

Note:

- The parameter, ``@recipients``, is a semicolon-delimited list of e-mail
  addresses.
- If the rows wrap (because they are too long), set the ``@query_result_width``
  to a larger value e.g:

  ::

    @query_result_width=10000

- To set a report schedule, select the *Schedules* page and click *New*:

  ::

    ../../../images/howto/microsoft/sql-server-database-mail-new-job-schedule.gif

- To test the report, right click the job in *SQL Server Agent*, *Jobs* choose
  *Start Job at Step...*.

Logging
=======

*Microsoft Management Studio*, *Management*, *Database Mail*, *View Database
Mail Log*...

Security
========

To give a ``SELECT`` only user permission to send database mail, see
``EXECUTE permission was denied, sp_send_dbmail``, :doc:`issues`.


.. _sp_send_dbmail: http://msdn.microsoft.com/en-us/library/ms190307.aspx

