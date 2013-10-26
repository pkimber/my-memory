Colour
******

.. highlight:: java

Links
=====

`500+ Colours with their RGB values`_.

ColorDrawable
=============

To set the colour for a drawable object (where ``pw`` is a popup window):

::

  final ColorDrawable dw = new ColorDrawable(Color.GREEN);
  pw.setBackgroundDrawable(dw);

...we can also use *RGB* values e.g:

::

  final ColorDrawable dw = new ColorDrawable(Color.rgb(137, 104, 205));


.. _`500+ Colours with their RGB values`: http://cloford.com/resources/colours/500col.htm

