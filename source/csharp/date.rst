Date
****

Data Type
=========

::

  System.DateTime moment = new System.DateTime(1999, 1, 13, 3, 57, 32, 11);

Format
======

`Formatting Date and Time using the DateTime object`_

The ``ToString()`` method of the DateTime class takes a *formatter string* as a
parameter:

::

  moment.ToString("dd/MM/yyyy");

Now
===

::

  DateTime.Now.ToString();

Properties
==========

Month
-----

The month component, expressed as a value between 1 and 12.

http://msdn2.microsoft.com/en-us/library/system.datetime.month.aspx

::

  moment.Month

Year
----

The year, between 1 and 9999.

http://msdn2.microsoft.com/en-us/library/system.datetime.year.aspx

::

  moment.Year

.. _`Formatting Date and Time using the DateTime object`: http://www.dotnetspider.com/kb/Article276.aspx

