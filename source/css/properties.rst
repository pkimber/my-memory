Properties
**********

Links
=====

- See :doc:`issues` for a note about spaces between the value and the units.

color, background-color
=======================

::

  color: yellow;
  background-color: blue;

There are 17 valid predefined colour names.  They are aqua, black, blue,
fuchsia, gray, green, lime, maroon, navy, olive, orange, purple, red, silver,
teal, white and yellow.  ``transparent`` is also a valid value.

display
=======

The display property sets how/if an element is displayed.

http://www.w3schools.com/css/pr_class_display.asp

::

  p
  {
      display: block
  }

==============  =============================================================
**Value**       **Description**
==============  =============================================================
block           The element will be displayed as a block-level element, with
                a line break before and after the element.
==============  =============================================================

Margin
======

The margin property is a shorthand property for setting all of the properties
for the four margins in one declaration:

::

  h1 {margin: 1em 2em 3em 4em}

In the order ``margin-top``, ``margin-right``, ``margin-bottom``,
``margin-left``.

To set a single margin:

::

  p {margin-bottom: 1em}

The Box Model
-------------

`Margins and Padding`_

Margins, padding and borders are all part of what's known as the Box Model:

::

  [../../images/howto/css/box-model.gif]The Box Model

e.g.

- top is 10px, right is 5px, bottom is 15px and left is 20px:

  ::

    padding:10px 5px 15px 20px;

- top and bottom are 10px, right and left are 5px:

  ::

    padding:10px 5px;

- all four padding values are 10px:

  ::

    padding:10px;

Text
====

font-family
-----------

::

  font-family : Verdana, Arial, Helvetica, Geneva, sans-serif;

font-size
---------

...it is generally accepted that "``em``" or "``%``" are the best units to use
for font-sizes:

::

  font-size : 70%;
  font-size : 2em;

"``em``" is the unit for the calculated size of a font.  So "``2em``", for
example, is two times the current font size.

font-weight
-----------

::

  font-weight: bold;
  font-weight: normal;

line-height
-----------

::

  line-height: 1.5;

``line-height`` can be a number (which specifies a multiple of the font size,
so '2' will be two times the font size, for example), a length, a percentage or
``normal``.

text-align
----------

::

  text-align: center;

...left, right, center or justify.

text-transform
--------------

This will change the case of the text:

::

  text-transform: capitalize;
  text-transform: uppercase;
  text-transform: lowercase;
  text-transform: none;

text-decoration
===============

The text-decoration property decorates the text!

http://www.w3schools.com/css/pr_text_text-decoration.asp

::

  a.atopnav, a.atopnavs
  {
      text-decoration: none;
  }

==============  =============================================================
**Value**       **Description**
==============  =============================================================
none            Defines a normal text
==============  =============================================================


.. _`Margins and Padding`: http://www.htmldog.com/guides/cssbeginner/margins/
