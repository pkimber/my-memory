Keywords
********

Comments
========

::

  /* This is a comment. */
  p {
      text-align:center;
      /* This is another comment. */
      color:black;
      font-family:arial;
      }

div
===

http://webdesign.about.com/cs/htmltags/a/aa011000a.htm

The *div* tag defines logical divisions in your Web page. In terms of layout,
the <div> tag does only one thing, it determines the alignment of that section
of your page.

<div> also gives you the chance to define the style of whole sections of HTML.
You could define a section of your page as a call out and give that section a
different style from the surrounding text.

But that's not all it does! The <div> tag gives you the ability to name certain
sections of your documents so that you can affect them with style sheets or
Dynamic HTML.

One thing to keep in mind when using the <div> tag is that it breaks
paragraphs.  It acts as a paragraph end\beginning, and while you can have
paragraphs within a <div> you can't have a <div> inside a paragraph.

The primary attributes of the *div* tag are:

- align (left|center|right|justify)
- style
- name

Because the ``<center>`` tag has been deprecated in HTML 4.0, it is a good idea
to start using:

::

  <div> align="center"

to center your text and images. You can also use the style tag:

::

  text-align: center

span
====

http://www.w3schools.com/tags/tag_span.asp

The ``<span>`` tag is used to group inline-elements in a document.

http://webdesign.about.com/cs/htmltags/a/aa011000a.htm

The ```<span>`` tag has very similar properties to the ``<div>`` tag, in that
it affects the style of the text it encloses. Items in the ``<span>`` can be
aligned or given specific style attributes.

The primary difference between the ``<span>`` and ``<div>`` tags is that
``<span>`` doesn't do any formatting of it's own. The ``<div>`` tag acts as a
paragraph break, because it is defining a logical division in the document.
The ``<span>`` tag simply tells the browser to apply the style and align rules
to whatever is within the ``<span>``.

The ``<span>`` tag has no required attributes, but the one that is most useful
is:

- style

Use ``<span>`` when you want to change the style of elements without naming
them in a separate division within the document. For example, if you had a
Level 3 Heading (``<h3>``) that you wanted the second word to be red, you
could surround that word with

::

  <span> style="color : #f00;">2ndWord<\<span>

...and it would still be a part of the ``<h3>`` tag as well, just red.

DOCTYPE
=======

The ``<!DOCTYPE>`` tag

Definition and Usage
--------------------

The ``<!DOCTYPE>`` declaration is the very first thing in your document, before
the ``<html>`` tag. This tag tells the browser which HTML or XHTML
specification the document uses.

HTML
----

HTML 4.01 specifies three document types: Strict, Transitional, and
Frameset.

HTML Strict DTD
---------------

Use this when you want clean markup, free of presentational clutter. Use this
together with Cascading Style Sheets (CSS):

::

  <!DOCTYPE HTML PUBLIC "-\\W3C\\DTD HTML 4.01\\EN" "http:\\www.w3.org\TR\html4\strict.dtd">

HTML Transitional DTD
---------------------

The Transitional DTD includes presentation attributes and elements that W3C
expects to move to a style sheet. Use this when you need to use HTML's
presentational features because your readers don't have browsers that support
Cascading Style Sheets (CSS):

::

  <!DOCTYPE HTML PUBLIC "-\\W3C\\DTD HTML 4.01 Transitional\\EN" "http:\\www.w3.org\TR\html4\loose.dtd">

Frameset DTD
------------

The Frameset DTD should be used for documents with frames. The Frameset DTD is
equal to the Transitional DTD except for the frameset element replaces the body
element:

::

  <!DOCTYPE HTML PUBLIC "-\\W3C\\DTD HTML 4.01 Frameset\\EN" "http:\\www.w3.org\TR\html4\frameset.dtd">

XHTML
-----

XHTML 1.0 specifies three XML document types: Strict, Transitional, and
Frameset.

XHTML Strict DTD
----------------

Use this DTD when you want clean markup, free of presentational clutter. Use
this together with Cascading Style Sheets (CSS):

::

  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

XHTML Transitional DTD
----------------------

Use this DTD when you need to use XHTML's presentational features because your
readers don't have browsers that support Cascading Style Sheets (CSS):

::

  <!DOCTYPE html PUBLIC "-\\W3C\\DTD XHTML 1.0 Transitional\\EN" "http:\\www.w3.org\TR\xhtml1\DTD\xhtml1-transitional.dtd">

XHTML Frameset DTD
------------------

Use this DTD when you want to use frames!

::

  <!DOCTYPE html PUBLIC "-\\W3C\\DTD XHTML 1.0 Frameset\\EN" "http:\\www.w3.org\TR\xhtml1\DTD\xhtml1-frameset.dtd">

To check that you have written a valid XHTML document with a correct DTD, you
can link your XHTML page to an XHTML validator.
