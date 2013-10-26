Tutorial
********

Links
=====

- `Colour Names`_
- Tutorial_
- `Browser Support`_
- `Scripting Iframes - Tutorial and Examples`_

Syntax
======

http://www.w3schools.com/css/css_syntax.asp

The CSS syntax is made up of three parts: a selector, a property and a value:

::

  selector {property: value}

e.g.

::

  body {color: black}

If  the value is multiple words, put quotes around the value:

::

  p {font-family: "sans serif"}

Note: If you wish to specify more than one property, you must separate each
property with a semi-colon. The example below shows how to define a center
aligned paragraph, with a red text color:

::

  p {text-align:center;color:red}

To make the style definitions more readable, you can describe one property on
each line, like this:

::

  p
  {
      text-align: center;
      color: black;
      font-family: arial
  }

Grouping
--------

You can group selectors. Separate each selector with a comma. In the example
below we have grouped all the header elements. All header elements will be
green:

::

  h1,h2,h3,h4,h5,h6
  {
      color: green
  }

Selectors
---------

Class Selector
--------------

With the class selector you can define different styles for the same type of
HTML element. Say that you would like to have two types of paragraphs in your
document: one right-aligned paragraph, and one center-aligned paragraph.  Here
is how you can do it with styles:

::

  p.right {text-align: right}
  p.center {text-align: center}

You have to use the class attribute in your HTML document:

::

  <p class="right">
  This paragraph will be right-aligned.
  </p>

  <p class="center">
  This paragraph will be center-aligned.
  </p>

You can also omit the tag name in the selector to define a style that will be
used by all HTML elements that have a certain class. In the example below, all
HTML elements with ``class="center"`` will be centre-aligned:

::

  .center {text-align: center}

In the code below both the h1 element and the p element have
``class="center"``.  This means that both elements will follow the rules in the
``".center"`` selector:

::

  <h1 class="center">
    This heading will be center-aligned
  </h1>

  <p class="center">
    This paragraph will also be center-aligned.
  </p>

**Note:** Do NOT start a class name with a number! It will not work in
Mozilla/Firefox.

ID Selector
-----------

A CSS ID selector contains a "#" immediately followed by the ID value:

The following ID selector matches the ``H1`` element whose ID attribute
has the value ``chapter1``:

::

  H1#chapter1 { text-align: center }

Comments
--------

You can insert comments into CSS to explain your code, which can help you when
you edit the source code at a later date. A comment will be ignored by the
browser.  A CSS comment begins with ``/*``, and ends with ``*/``, like this:

::

  /* This is a comment */

Embedded Style Sheet
--------------------

::

  <style type="text/css">
      .highlighted {
          background-color: yellow;
      }
  </style>

External Style Sheet (Linking)
------------------------------

An external style sheet is ideal when the style is applied to many pages.  With
an external style sheet, you can change the look of an entire Web site by
changing one file. Each page must link to the style sheet using the ``link``
tag.  The ``link`` tag goes inside the head section:

::

  <head>
    <link rel="stylesheet" type="text/css" href="mystyle.css" />
  </head>

The browser will read the style definitions from the file mystyle.css, and
format the document according to it.

An external style sheet can be written in any text editor. The file should not
contain any html tags. Your style sheet should be saved with a ``.css``
extension.  An example of a style sheet file is shown below:

::

  hr {color: sienna}
  p {margin-left: 20px}
  body {background-image: url("images/back40.gif")}

**Note:** Do NOT leave spaces between the property value and the units!  If you
use ``margin-left: 20 px`` instead of ``margin-left: 20px`` it will only work
properly in IE6 but it will not work in Mozilla/Firefox or Netscape.

Examples
--------

Sample html and css files:

::

  ..\..\misc\howto\css\simple.css
  ..\..\misc\howto\css\simple.html


.. _`Colour Names`: http://www.w3schools.com/css/css_colornames.asp
.. _Tutorial: http://www.westciv.com/style_master/academy/css_tutorial/index.html
.. _`Browser Support`: http://www.westciv.com/style_master/academy/browser_support/index.html
.. _`Scripting Iframes - Tutorial and Examples`: http://www.dyn-web.com/dhtml/iframes/
