Date Time
*********

Compare Date
============

To compare two dates (removing the time element), use the ``date()`` method:

::

  self.assertEquals(
      date_collected.date(),
      datetime.datetime(2011, 7, 13).date()
  )

