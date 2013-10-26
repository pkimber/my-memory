Links
*****

Admin
=====

- `sqlcmd - use a dedicated administrator connection to kill a running query`_

Backup
======

- `How to Backup SQL Server Databases Using SMO and PowerShell`_
- `Use Backup/Restore to Minimize Upgrade Downtimes`_

Blogs
=====

- `Stephen Hill's Bloggie - SQL Server Tips and Tricks`_

Formatting
==========

- `SQL and PL/SQL Formatter`_

Error Handling
==============

SQL Server 2000
---------------

- `Erland Sommarskog`_

  - `Implementing Error Handling with Stored Procedures`_
  - `Error Handling in SQL Server - a Background`_

SQL Server 2005
---------------

- `msdn - TRY...CATCH (Transact-SQL)`_
- `TRY...CATCH in SQL Server 2005`_
  An Easier Approach to Rolling Back Transactions in the Face of an Error.
  *Also realize that not all errors generating by the TRY block statements are
  passed onto the CATCH block.  Any errors with a severity of 10 or less are
  considered to be warnings and do not branch control flow to the CATCH block.
  Also, any errors that sever the database connection will not cause the CATCH
  block to be reached*.
- `Try/Catch Block in SQL Server 2005`_
  *Not all errors can be trapped by a TRY/CATCH block.  The first types of
  errors that are not trapped are compile errors, like a syntax error within a
  batch of T-SQL statements.  Another type of error is deferred name
  resolution errors created by statement level recompilations.  If a process
  is terminated by a KILL command then a TRY/CATCH block does not capture this
  error.  Client interrupt requests or broken client connections are also not
  trapped by the TRY/CATCH block.  For errors that are not trapped, SQL Server
  2005 passes control back to the application immediately, without executing
  any CATCH block code*.
- `SQL Server Error Handling Workbench`_

JDBC
====

- `Six Possible solutions for JDBC – SQL Server Connection problem`_

Groups
======

- http://groups.google.com/group/microsoft.public.sqlserver.programming/topics

Learning
========

- `Ten Common SQL Programming Mistakes`_
- `Differences between SET and SELECT in SQL Server`_
- `SQL Server Programming Hacks - 100+ List`_
- `Good SQL Articles To Read If You Can't Afford Books`_
- `Twenty tips to write a good stored procedure`_
- `7 Preventable Backup Errors`_

Optimise/Tuning
===============

- `Quick SQL Server Tuning Tip`_
- 10 tips about SQL Server that every developer should know:

  ::

    ../../../misc/howto/microsoft/sql-server\mr-bool-10-tips-about-sql.pdf

  ...copy of Nilton Pinheiro's article at Mr.Bool_

- `Difference Between Index Scan and Index Seek`_

Monitor
=======

- DMO

  - `Is SQL-DMO still supported...`_
  - `Introduction to SQL-DMO`_

Testing
=======

- http://tsqlunit.sourceforge.net/
- http://sourceforge.net/apps/trac/tsqlunit/
- http://tst.codeplex.com/
  T.S.T. the T-SQL Test Tool
- http://sourceforge.net/projects/tsqlunittestgen/

  - `YouTube, Automating tests for T-SQL code`_

-   `Test-Driven Development of T-SQL Code`_

Utility
=======

- `T-SQL code, Procedure to script your data`_
  (to generate ``INSERT`` statements from the existing data).
- `tablediff Utility`_
  The tablediff utility is used to compare the data in two tables...
- `tablediff: howto compare database tables`_...


.. _Mr.Bool: http://www.mrbool.com/articles/viewcomp.asp?comp=4982&hl=
.. _`7 Preventable Backup Errors`: http://www.simple-talk.com/sql/database-administration/7-preventable-backup-errors/
.. _`Difference Between Index Scan and Index Seek`: http://blog.sqlauthority.com/2009/01/18/sql-server-difference-between-index-scan-and-index-seek/
.. _`Differences between SET and SELECT in SQL Server`: http://vyaskn.tripod.com/differences_between_set_and_select.htm
.. _`Erland Sommarskog`: http://www.sommarskog.se/
.. _`Error Handling in SQL Server - a Background`: http://www.sommarskog.se/error-handling-I.html
.. _`Good SQL Articles To Read If You Can't Afford Books`: http://blogs.lessthandot.com/index.php/DataMgmt/DataDesign/good-sql-articles-to-read-if-you-can-t-a
.. _`How to Backup SQL Server Databases Using SMO and PowerShell`: http://www.sqlmusings.com/2009/05/31/how-to-backup-sql-server-databases-using-smo-and-powershell/
.. _`Implementing Error Handling with Stored Procedures`: http://www.sommarskog.se/error-handling-II.html
.. _`Introduction to SQL-DMO`: http://www.sqlteam.com/article/introduction-to-sql-dmo
.. _`Is SQL-DMO still supported...`: http://blogs.msdn.com/mwories/articles/dmofaq.aspx
.. _`Quick SQL Server Tuning Tip`: http://gathadams.com/2008/11/01/quick-sql-server-tuning-tip/
.. _`SQL Server Error Handling Workbench`: http://www.simple-talk.com/sql/t-sql-programming/sql-server-error-handling-workbench/
.. _`SQL Server Programming Hacks - 100+ List`: http://wiki.lessthandot.com/index.php/SQL_Server_Programming_Hacks_-_100%2B_List
.. _`SQL and PL/SQL Formatter`: http://www.orafaq.com/utilities/sqlformatter.htm
.. _`Six Possible solutions for JDBC – SQL Server Connection problem`: http://minddiary.com/2008/03/31/possible-solutions-for-jdbc-sql-server-connection-problem/
.. _`Stephen Hill's Bloggie - SQL Server Tips and Tricks`: http://gatekiller.co.uk/Post/SQL_Server_Tips_and_Tricks
.. _`T-SQL code, Procedure to script your data`: http://vyaskn.tripod.com/code.htm#inserts
.. _`TRY...CATCH in SQL Server 2005`: http://www.4guysfromrolla.com/webtech/041906-1.shtml
.. _`Ten Common SQL Programming Mistakes`: http://www.simple-talk.com/sql/t-sql-programming/ten-common-sql-programming-mistakes/
.. _`Test-Driven Development of T-SQL Code`: http://www.sqlservercentral.com/articles/TSQLUnit/64357/
.. _`Try/Catch Block in SQL Server 2005`: http://www.databasejournal.com/features/mssql/article.php/3587891/TryCatch-Block-in-SQL-Server-2005.htm
.. _`Twenty tips to write a good stored procedure`: http://www.sqlservercentral.com/articles/Performance+Tuning/67427/
.. _`Use Backup/Restore to Minimize Upgrade Downtimes`: http://www.sqlservercentral.com/articles/Backup+%2f+Restore/66962/
.. _`YouTube, Automating tests for T-SQL code`: http://www.youtube.com/watch?v=bLtK20bl7G4
.. _`msdn - TRY...CATCH (Transact-SQL)`: http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx
.. _`sqlcmd - use a dedicated administrator connection to kill a running query`: http://blog.sqlauthority.com/2009/01/09/sql-server-sqlcmd-using-a-dedicated-administrator-connection-to-kill-currently-running-query/
.. _`tablediff Utility`: http://msdn.microsoft.com/en-us/library/ms162843.aspx
.. _`tablediff: howto compare database tables`: http://sqlserveradvisor.blogspot.com/2009/06/tablediff-howto-compare-database-tables.html
