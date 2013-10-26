Table
*****

.. highlight:: javascript

Event
=====

To attach an event handler to all rows (even elements which haven't yet been
created), use the ``live`` (as in ``die``) method::

  jQuery('table tr').live('click', function () {
      selectRow(jQuery(this));
  });

Note: In this snippet, we call the ``selectRow`` function when the user clicks
on a table row.

Row Count
=========

From `jQuery - count number of rows in a table`_::

  var rowCount = $('#my_table tr').length;

Row Number
==========

Get the row number of a row element
-----------------------------------

::

  function getRowNumber(rowElement) {
      return rowElement.prevAll('tr').size() + 1;
  }

Get row number X from a table
-----------------------------

::

  function getTableRow(tableElement, rowNumber) {
      return jQuery(tableElement).find("tr:nth-child(" + rowNumber + ")")
  }

Row Select
==========

::

  var element = jQuery("#my_table tr:nth-child(3)");

Table
=====

Get the table element from the row element::

  function getTableFromRow(rowElement) {
      return rowElement.parent('table');
  }


.. _`jQuery - count number of rows in a table`: http://stackoverflow.com/questions/1149958/jquery-count-number-of-rows-in-a-table
