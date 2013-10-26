sqlcmd
******

Links
=====

- Also see :doc:`osql`
- `Interesting Observation - Using sqlcmd From SSMS Query Editor`_

Script
======

If you need to run several SQL scripts you can use the following command:

::

  for /f %%i in (scripts_to_run.txt) do sqlcmd -S db_server -d db_name -U db_user -P db_password -i %%i

25/02/2009 09:41:37
-------------------

::

  From: SL
  Sent: 25 February 2009 09:36
  To: Office Staff
  Subject: Applying mulitple SQL scripts

  Hello,

  If you have several scripts to run on a database from a folder you can use
  this command:

  SET LOCAL
  SET SQLCMD=SQLCMD -Sdbserver -Uusername -Ppassword -ddbname
  FOR %%d IN (*.sql) DO %SQLCMD% -i%%d
  ENDLOCAL

  I probably wouldn't use on a live database without very careful testing - but
  good setting up a new database on your local machine or dev.


.. _`Interesting Observation - Using sqlcmd From SSMS Query Editor`: http://blog.sqlauthority.com/2009/01/06/sql-server-interesting-observation-using-sqlcmd-from-ssms-query-editor/

