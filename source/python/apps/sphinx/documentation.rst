Documentation
*************

Sample
======

In this sample, we will create a simple *introduction* document:

- After creating the initial project - see :doc:`getting-started`.
- Create a new ``rst`` file for the *introduction* document in the
  ``source`` folder e.g:

  ::

    source\intro.rst

- The document must include a title.  Here is some sample text (not very
  impressive, because I don't know much yet):

  ::

    ====================
    MyApp - Introduction
    ====================

    This is a paragraph.  It's quite
    short.

       This paragraph will result in an indented block of
       text, typically used for quoting other text.

    This is another one.

- Add the document to the table of contents in the ``index.rst`` file:

  ::

    Contents:

    .. toctree::
       :maxdepth: 2

       intro

  Note:

  - Don't put the ``rst`` extension into the ``toctree``.
  - If you want to hide some documents and stop Sphinx warning about missing
    documents:

    ::

      .. toctree::
         :hidden:

         doc_to_hide
         doc_to_hide_two

- Build the source:

  ::

    sphinx-build source html

- Browse to the ``html/index.html`` document.  You should see the
  *introduction* document in the *Contents*.
