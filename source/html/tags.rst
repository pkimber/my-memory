tags
****

.. highlight:: html

Anchor
======

Also see *links* below...

::

  <a name="anchor-one">This is the location of anchor one.</a>

CDATA
=====

CDATA sections in XML

In an XML document or external parsed entity, a CDATA section is a section of
element content that is marked for the parser to interpret as only character
data, not markup.

A CDATA section starts with the following sequence::

  <![CDATA[

and ends with the first occurrence of the sequence::

  ]]>

All characters enclosed between these two sequences are interpreted as
characters, not markup or entity references.  For example, in a line like
this::

  <sender>John Smith</sender>

the opening and closing "sender" tags are interpreted as markup.  However, if
written like this::

  <![CDATA[<sender>John Smith</sender>]]>

then the code is interpreted the same as if it had been written like this::

  &lt;sender&gt;John Smith&lt;/sender&gt;

Comment
=======

http://www.webheadstart.org/xhtml/comments/::

  <!-- This is an example of a comment -->

<base>
======

http://www.w3schools.com/tags/tag_base.asp

The base element specifies a base URL for all the links in a page.

Differences Between HTML and XHTML:

- In HTML the ``<base>`` tag has no end tag.
- In XHTML the ``<base>`` tag must be properly closed.

**Note:** The ``<base>`` tag must go inside the head element.

Example
-------

Assume that the absolute address for an image is::

  <img src="http://www.w3schools.com/images/smile.gif" />

Now we insert the ``<base>`` tag, which specifies a base URL for all of
the links in a page, in the head section of a page::

  <head>
    <base href="http://www.w3schools.com/images/" />
  </head>

When inserting images on the page in the example above, we just have to specify
the relative address, and the browser will look for that file using the full
URL (http://www.w3schools.com/images/smile.gif)::

  <img src="smile.gif" />

<embed>
=======

- http://www.devguru.com/Technologies/html/quickref/html_other_tags.html
- http://www.webreference.com/js/column20/embed.html

The easiest and "most supported" way to add video or sound to your web site
is to include the special HTML tag called EMBED. This causes the browser
itself to include controls for the multimedia. No ActiveX, Java, VBscript or
JavaScript is needed for this method.

Note: Not recognized by the W3C HTML version 4.01 standard.

hr
==

Use this tag to display lines across the screen::

  <hr />

Note: the horizontal rule tag has no ending tag like the line break tag.

img
===

::

  <img src="angry.gif" alt="Angry face" />

The ``width`` and ``height`` attributes are optional but strongly
recommended as they help the browser arrange the page more quickly::

  <img src="image.jpg" width="200" height="150">

input
=====

The *input* tag defines the start of an input field where the user can enter
data.

In HTML the ``input`` tag has no end tag.  In XHTML the ``input`` tag must be
properly closed::

  <form action="form_action.asp" method="get">
    First name:
    <input type="text" name="fname" value="Mickey" />
    <br />
    <input type="checkbox" name="mailing" value="mailing" />
    <br />
    <input type="checkbox" name="contact" value="contact" checked="checked" />
    <br />
    <input type="submit" value="Submit" />
  </form>

**Note**: Only form elements with a ``name`` attribute will have their values
passed when submitting a form.

hidden
------

::

  <input type="hidden" id="age" name="age" value="23" />

label
=====

::

  <label for="male">Male</label>
  <input type="radio" name="sex" id="male" />

Note: Using the ``for`` attribute will make your form more accessible to
screen readers etc.  For more information see:
`Use the label element to make your HTML forms accessible`_.

Links (URL)
===========

Links_

::

  <a href="./chapter2.html" title="Get chapter two.">chapter two</a>.

To open the page in another tab, use the ``target`` attribute::

  <a
      target="_blank"
      title="English public holidays."
      href="http://www.direct.gov.uk/en/Governmentcitizensandrights/LivingintheUK/DG_073741">
      We are not open during English public holidays.
  </a>

Also see *anchor* above... a link defined in the file "``two.html``" in the
same directory as "``one.html``" would refer to the anchor as follows::

  <A href="./one.html#anchor-one"> anchor one</A>.

email
-----

::

  <a href="mailto:me@server.com?subject=Info&body=Please send information!">me@server.com</a>

select
======

(drop down list box)::

  <select name="cars">
    <option value = "volvo">Volvo</option>
    <option value = "saab">Saab</option>
    <option value = "opel" selected = "selected">Opel</option>
    <option value = "audi">Audi</option>
  </select>

- the ``value`` attribute indicates what is sent to the server.
- ``selected`` specifies that the option will be displayed first in the list.

Note: If you don't give the ``select`` control a ``name``, then no value will
be posted.

Table
=====

::

  <table border="1">
    <tr>
      <td>row 1, cell 1</td>
      <td>row 1, cell 2</td>
    </tr>
    <tr>
      <td>row 2, cell 1</td>
      <td>row 2, cell 2</td>
    </tr>
  </table>

Note: Table headers are with the ``th`` tag e.g::

  <table border="1">
    <tr>
      <th>Header 1</th>
      <th>Header 2</th>
    </tr>
    <tr>
      <td>row 1, cell 1</td>
      <td>row 1, cell 2</td>
    </tr>
    <tr>
      <td>row 2, cell 1</td>
      <td>row 2, cell 2</td>
    </tr>
  </table>

Text Area
=========

Defines a text-area (a multi-line text input control)::

  <textarea name="fname" rows="2" cols="20">
    The cat was playing in the garden.
  </textarea>


.. _Links: http://www.w3.org/TR/html401/struct/links.html
.. _`Use the label element to make your HTML forms accessible`: http://www.456bereastreet.com/archive/200711/use_the_label_element_to_make_your_html_forms_accessible/
