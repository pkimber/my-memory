Transact-SQL - Control Flow
***************************

Case
====

`Select Case Example`_

::

  SELECT name, location,
      CASE
          WHEN(CHARINDEX('unsubscribe', body) > 0)
              THEN 'Unsubscribe'
          WHEN(CHARINDEX('registered successfully', body) > 0)
              THEN 'Registered'
          ELSE
             'Something else...'
      END
      FROM location

::

  CASE WHEN @totalResults > 0 THEN 1 ELSE 0 END AS totalResults

IF, ELSE
========

::

  IF @cost <= @compareprice
  BEGIN
      PRINT 'These products can be purchased for less than '
          + RTRIM(CAST(@compareprice AS varchar(20))) + '.'
  END
  ELSE
  BEGIN
      PRINT 'The prices for all products in this category exceed '
          + RTRIM(CAST(@compareprice AS varchar(20))) + '.'
  END

WHILE
=====

::

  DECLARE @counter INT
  SET @counter = 0
  WHILE @counter < 10
  BEGIN
      SET @counter = @counter + 1
      PRINT 'The counter is ' + CAST(@counter as CHAR)
  END

Note: To break out of a loop, use the ``BREAK`` statement.


.. _`Select Case Example`: http://jackdonnell.com/articles/Sql_Case.htm

