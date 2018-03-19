Decimal
*******

.. highlight:: python

.. note:: To create a ``Decimal`` from a ``float``, first convert it to a
          string.

Links
=====

decimal_ Decimal fixed point and floating point arithmetic.

Convert
=======

To string::

  str(number)

To set the number of decimal places to 2::

  >>> 'The price is {:.2f} pounds'.format(Decimal('1'))
  'The price is 1.00 pounds'

Import
======

::

  from decimal import Decimal

Rounding
========

::

  from decimal import Decimal

  bmi = weight / (height * height)
  return bmi.quantize(Decimal('.01'))

::

  from decimal import Decimal, ROUND_UP

  bmi = weight / (height * height)
  return bmi.quantize(Decimal('.01'), rounding=ROUND_UP)

To convert to an ``int``::

  >>> from decimal import Decimal, ROUND_UP
  >>> value = Decimal('9620.016666666666')
  >>> x = value.quantize(Decimal('1.'), rounding=ROUND_UP)
  >>> x
  Decimal('9621')
  >>> int(x)
  9261

.. tip:: ``round`` converts the decimal to floating point, so better to use
         ``quantize`` (although I don't understand the maths behind it).


.. _decimal: https://docs.python.org/3.4/library/decimal.html
