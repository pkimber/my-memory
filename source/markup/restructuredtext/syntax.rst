Syntax
******

Links
=====

- `Quick reStructuredText`_
- `Sphinx Cheat Sheet`_

Comment
=======

::

  .. This text will not be shown
     And neither will this text.

Definition lists
================

::

  what
    Definition lists associate a term with
    a definition.

  how
    The term is a one-line phrase, and the
    definition is one or more paragraphs or
    body elements

Escape
======

Escape characters with a back-slash.

Format
======

::

  *Italics*

  **Bold**

  ``mono spaced``

  ::

    print 'we love work'

  We can also append double colon to the previous paragraph like this::
    print 'we love work'

Note: See *Syntax Highlighting* below...

Hyperlink
=========

email
-----

An email address is automatically detected, no need to prefix with ``mailto:``

External
--------

::

  Puzzle_ is a great company!

  .. _Puzzle: http://www.puzzle.com/

...if the text contains spaces, then enclosing in ``\``` seems to work:

::

  YouSlide is supplied by `4th Street`_

  .. _`4th Street`: http://www.4thstreet.com/

**Shared**

To create a shared file for links:

- Create a file, ``list_links.txt``, which just contains the links e.g:

  ::

    .. _Starfish: http://www.starfish.com/
    .. _`does not include ATL or MFC`: http://msdn.microsoft.com/en-gb/library/hs24szh9.aspx

  Note: Using the ``txt`` extension seems to stop the warning:
  ``document isn't included in any toctree``...

- At the bottom of each file which wants to use these links:

  ::

    .. include:: list_links.txt

- In your files, refer to the links in the standard way:

  ::

    Tried to install Starfish_ plugin...

Internal
--------

`Sphinx documentation - Cross-referencing arbitrary locations`_

To create a link to a heading *within the same document*:

::

  My Heading
  ----------

  This is a link to `My Heading`_

To create a link to another document:

::

  See :doc:`unison`.

Note: In this example, ``unison.rst`` is the name of the other document.

To link to a document in another folder, include the folder name in the path
e.g:

::

  :doc:`../asset-register`

To create a link to a section in another document, first mark the section
heading:

::

  .. _build_prerequisites:

  Prerequisites
  -------------

...to link to this <reference label>:

::

  :ref:`build_prerequisites`

This works just as well when section and reference are in different source
files.

Not sure if it is possible to link to local resource files... see
`allow to check for links to "external" files`_ (non-sphinx-generated)

How about: `Referencing downloadable files`_:

::

  See
  :download:`./misc/example.py` or
  :download:`this example script <../example.py>`.

`Including external files in Sphinx`_  just use restructured text's normal
include directive e.g:

::

  .. include:: ../README.txt
  .. include:: ../TODO.txt

Images
======

- Create an ``images`` folder alongside the folder containing the ``rst``
  files:

  ::

    doc/source/
    doc/images/

- Copy in your images (``png`` format is probably best).
- To reference the image from the ``rst`` file:

  ::

    .. image:: ../images/project.png
       :scale: 60

  Here we use the ``scale`` directive.  For others see: `Image Directives`_

Line
====

Horizontal line of 4 or more repeated punctuation characters:

::

  _____________________________________________________________________________

List
====

::

  - Apples
  - Oranges

  1. User pays for their purchase.
  2. The user is instructed to text the first 6 digits.

...or for automatic numbering:

::

  #. User pays for their purchase.
  #. The user is instructed to text the first 6 digits.

Sections and Title
==================

Titles are underlined (or over-and underlined) with a printing non-alphanumeric
7-bit ASCII character:

::

  Starfish - Introduction
  =====================
  Simple Description
  ---------------------

Note: The underline/overline must be at least as long as the title text.

Note
====

::

  .. note:: We are considering merging the latest version with the outstanding
     code on the old branch.

The following admonition directives have been implemented::

  attention
  caution
  danger
  error
  hint
  important
  note
  tip
  warning

For more information, see: `Specific Admonitions`_

The title for a generic, titled admonition may be anything (e.g.
``Question``)::

  .. admonition:: Question

    Is the world flat?

Syntax Highlighting
===================

To set the highlight value for all following literal blocks:

::

  .. highlight:: xml

  ::

    <com.sample.ImageView
        android:id="@+id/img_banner" />

To set the language for one block:

::

  .. code-block:: xml

    <LinearLayout
        xmlns:android="http://schemas.android.com/apk/res/android"

*Note* Do not put in the ``::`` when using a ``code-block``.

Tables
======

Simple
------

::

  =====  =====  ======
     Inputs     Output
  ------------  ------
    A      B    A or B
  =====  =====  ======
  False  False  False
  True   False  True
  False  True   True
  True   True   True
  =====  =====  ======

Complex
-------

::

  +------------+------------+-----------+
  | Header 1   | Header 2   | Header 3  |
  +============+============+===========+
  | body row 1 | column 2   | column 3  |
  +------------+------------+-----------+
  | body row 2 | Cells may span columns.|
  +------------+------------+-----------+

Text (Line Blocks)
==================

::

  | 96 St Georges Rd
  | Exeter
  |     Line breaks and initial indents
  |     are preserved.
  | Continuation lines are wrapped
    portions of long lines; they begin
    with spaces in place of vertical bars.


.. _`allow to check for links to "external" files`: http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=546612
.. _`Image Directives`: http://docutils.sourceforge.net/docs/ref/rst/directives.html#image
.. _`Including external files in Sphinx`: http://reinout.vanrees.org/weblog/2010/12/08/include-external-in-sphinx.html
.. _`Quick reStructuredText`: http://docutils.sourceforge.net/docs/user/rst/quickref.html
.. _`Referencing downloadable files`: http://sphinx.pocoo.org/markup/inline.html#referencing-downloadable-files
.. _`Specific Admonitions`: http://docutils.sourceforge.net/docs/ref/rst/directives.html#note
.. _`Sphinx Cheat Sheet`: http://neuroimaging.scipy.org/site/doc/manual/html/devel/guidelines/sphinx_helpers.html
.. _`Sphinx documentation - Cross-referencing arbitrary locations`: http://sphinx.pocoo.org/markup/inline.html#ref-role
