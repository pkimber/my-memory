Issues
******

data types cannot be compared or sorted
=======================================

::

  select
    name.default_text as britTripLocationName,
    from brit_trip_item_location with(nolock)
      inner join ren_text_key [name] with(nolock) on brit_trip_item_location.name_text_key_id = name.id
    where brit_trip_item_id=7
    order by britTripLocationName

I get this error message:

::

  The text, ntext, and image data types cannot be compared or sorted, except when using IS NULL or LIKE operator.

`Group by on the text colum throws error`_

To solve the problem:

::

    order by convert(varchar(50), name.default_text)

EXECUTE permission was denied
=============================

General
-------

I created a database user in the normal manner, *Database*, *Security*,
*Users*, but keep getting this error:

::

  The EXECUTE permission was denied on the object 'check_submission_type', database 'ugc', schema 'dbo'.

To try and solve the problem:

::

  GRANT EXECUTE ON check_submission_type TO ugc_vote_verification_user

Note: This will (obviously) only sort the problem out for a single stored
procedure.

sp_send_dbmail
--------------

`Troubleshooting Database Mail: Permission denied on sp_send_dbmail`_

To send Database mail, users must be a user in the ``msdb`` database and a
member of the ``DatabaseMailUserRole`` database role in the ``msdb`` database.

- When you create the user, make sure their *User Mapping* includes the
  ``msdb`` database.

- To add ``msdb`` users or groups to this role use SQL Server Management Studio
  (the ``DatabaseMailUserRole`` will probably be in the list when you select
  ``msdb``) or execute the following statement for the user or role that needs
  to send Database Mail:

  ::

    EXEC msdb.dbo.sp_addrolemember
        @rolename = 'DatabaseMailUserRole',
        @membername = '<user or role name>';

"Must declare the scalar variable" in table-valued function
===========================================================

`MSDN Forums - "Must declare the scalar variable"`_

My stored procedure was using a table variable... and threw this error.  To
solve the problem, just use an alias for the table name:

::

  SELECT loyalty_location.* FROM loyalty_location WITH(NOLOCK)
      INNER JOIN @TempList tempList ON tempList.location_id = loyalty_location.id
      ORDER BY tempList.ordering


.. _`Group by on the text colum throws error`: http://www.issociate.de/board/index.php?t=msg&goto=32579&rid=0
.. _`Troubleshooting Database Mail: Permission denied on sp_send_dbmail`: http://msdn.microsoft.com/en-us/library/ms188719.aspx
.. _`MSDN Forums - "Must declare the scalar variable"`: http://social.msdn.microsoft.com/Forums/en-US/transactsql/thread/d0ff5190-f8fb-464e-9479-59b956999c25/

