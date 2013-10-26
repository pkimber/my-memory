SQL
***

Links
=====

- http://mojo.codehaus.org/sql-maven-plugin/
- JIRA_

Sample
======

How to (drop)/create a Microsoft SQL Server database, and drop it after the
test:

sample-sql-plugin_

(22/07/2008 15:23:01) I am hoping to build a full sample using LiquiBase,
:doc:`../liquibase/getting-started`  which will use the ``sql-maven-plugin`` to
create a database before creating all the indexes and tables.

Issues
======

HSQL - 28/08/2008 11:31:41
--------------------------

Doesn't appear to work with an in-memory HSQL database.  The plugin appears to
create the tables correctly, but the application cannot see the database.



.. _JIRA: http://jira.codehaus.org/browse/MSQL
.. _sample-sql-plugin: http://toybox/hg/sample/file/tip/java/maven/sample-sql-plugin

