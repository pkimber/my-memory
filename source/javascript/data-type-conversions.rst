Data Type Conversions
*********************

.. highlight:: javascript

Number
======

::

  var s = weight.toString();

Float
-----

::

  parseFloat("10.33")

**Note**: To round to a specified number of decimal places:

::

  var num = 5.56789;
  var n = num.toFixed(2);
  5.57

Integer
-------

Parse a string and return an integer

::

  var value = parseInt(s, 10);
  total = isNaN(value) ? 0 : value;

Note:

- The second parameter to ``parseInt`` forces the function to read a base 10
  number.
- The method of checking to see if ``value`` is *not a number* is my idea - not
  a standard pattern.
