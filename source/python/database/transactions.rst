Transactions
************

From `The Python DB-API interface`_

For databases that support transactions, the Python interface silently starts a
transaction when the cursor is created. The ``commit()`` method commits the
updates made using that cursor, and the ``rollback()`` method discards them.


.. _`The Python DB-API interface`: http://www.amk.ca/python/writing/DB-API.html
