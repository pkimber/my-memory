Stored Procedure
****************

.. highlight:: sql

LiquiBase
=========

To create a MySQL stored procedure using Liquibase, the sample script,
``misc/sample-stored-procedure-script.sql`` has to be cut down so that it
only creates the stored procedure e.g:
``misc/sample-stored-procedure-liquibase.sql``.

To run this from within LiquiBase:

::

  <changeSet id="45" author="pat">
    <sqlFile
      splitStatements="false"
      path="misc/sample-stored-procedure-liquibase.sql"/>
  </changeSet>

Sample
======

The sample stored procedure ``misc/sample-stored-procedure-script.sql`` is a
script which creates a procedure, runs it and then removes it.  Some things to
note:

- We have to change the delimiter to something other than ``;`` so that MySQL
  is still happy to use ``;`` within the stored procedure.  In this sample we
  are using ``$$``.  It is common to see examples using ``//`` instead.

  **Note**: Don't forget to return the delimiter to it's default at the end of
  the script i.e:

  ::

    DELIMITER ;

- To display output, use the ``SELECT`` statement.  See the commented out line
  number 42.
- To call the stored procedure:

  ::

    CALL curdemo
