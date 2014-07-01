Transactions
************

.. highlight:: python

From `The Python DB-API interface`_

For databases that support transactions, the Python interface silently starts a
transaction when the cursor is created. The ``commit()`` method commits the
updates made using that cursor, and the ``rollback()`` method discards them::

  c = conn.cursor()
  c.execute("INSERT INTO stocks VALUES ('2006-01-05','BUY','RHAT',100,35.14)")
  conn.commit()
  # We can also close the connection if we are done with it.
  # Just be sure any changes have been committed or they will be lost.
  conn.close()


.. _`The Python DB-API interface`: http://www.amk.ca/python/writing/DB-API.html
