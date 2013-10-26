Data Manipulation
*****************

.. highlight:: sql

Delete
======

From `Is there a way to delete the most recent entry in MySQL?`_

To delete records using the ``LIMIT`` statement, you need a ``DATETIME`` column
which saved the current time during the ``INSERT INTO`` query.  Then you can
use the ``ORDER BY`` and ``LIMIT`` keywords to delete the last entry in your
table.

::

  DELETE FROM
    my_table
  ORDER BY
    date_column DESC
  LIMIT 1

Insert
======

::

  INSERT INTO tbl_name (a,b,c) VALUES(1,2,3),(4,5,6),(7,8,9);

Update
======

::

  SET @myId = 'ABC';
  UPDATE
    items
  SET status = (
    SELECT
      status
    FROM
      old_items
    WHERE
      id = @myId
    ORDER BY
      timeStamp DESC LIMIT 1
    )
  WHERE id = @myId;

Update with ``JOIN``

::

  UPDATE village
    JOIN county ON village.county_id = county.id
  SET
    village.temp_officer = county.officer
  WHERE
    county.name = 'Devon'


.. _`Is there a way to delete the most recent entry in MySQL?`: http://stackoverflow.com/questions/2524452/is-there-a-way-to-delete-the-most-recent-entry-in-mysql-using-php
