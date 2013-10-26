Wiki
****

List
====

::

  * Item 1
    * Sub List

  1. Item 1 of Numbered List

Headings
========

::

  = Heading =
  == Subheading ==

Line
====

Horizontal Line, Separator:

Four or more dashes (``----``) will be replaced by a horizontal line
(``<HR>``).

Paragraph
=========

Hard Return/Forced Line Break
-----------------------------

::

  [[BR]]

Tables
======

::

  ||Cell 1||Cell 2||Cell 3||
  ||Cell 4||Cell 5||Cell 6||

Text
====

Bold
----

::

  '''bold'''

Formatted
---------

::

  _

Italic
------

::

  ''italic''

Links
=====

Internal
--------

http://trac.edgewall.org/wiki/TracLinks

+---------------+-------------------------------------------------------------+
| Attachments   | ``attachment:wip.sql``                                      |
|               | ``attachment:"Sampling Report.xls"``                        |
|               | ``attachment:wip.sql:ticket:1493``                          |
|               | Note: Does not appear to work when there are spaces in the  |
|               | file-name.                                                  |
+---------------+-------------------------------------------------------------+
| Image         | ``[[Image(pic.gif)]]`` ``[[Image(pic.gif, 600px)]]``        |
+---------------+-------------------------------------------------------------+
| Tickets       | ``ticket:1`` or ``#1``                                      |
|               | ``comment:33`` or ``comment:3:ticket:2152``                 |
+---------------+-------------------------------------------------------------+
| Changesets    | ``changeset:1``, ``r1`` or ``[1]``                          |
+---------------+-------------------------------------------------------------+
| Source        | ``[source:trunk/database_module/create_table.sql]``         |
+---------------+-------------------------------------------------------------+
| Wiki Page     | ``wiki:CamelCase`` or ``CamelCase``                         |
|               | ``wiki:CamelCase#Anchor``                                   |
|               | Note: The anchor link is a standard heading.                |
+---------------+-------------------------------------------------------------+

email Addresses
---------------

::

  [mailto:simon@thecompany.com]

Pages and URLs
--------------

Hyperlinks are automatically created for WikiPageNames and URLs.  WikiPageLinks
can be disabled by prepending an exclamation mark "!" character, such as
``!WikiPageLink``:

::

  TitleIndex
  http://www.edgewall.com/
  !NotAlink

Links can be given a more descriptive title by writing the link followed by a
space and a title and all this inside square brackets.  If the descriptive
title is omitted, then the explicit prefix is discarded, unless the link is an
external link.  This can be useful for wiki pages not adhering to the
``WikiPageNames`` convention:

::

  [http://www.edgewall.com/ Edgewall Software]
  [wiki:TitleIndex Title Index]
  [wiki:ISO9000]

Query
=====

Simple examples of query reports...

::

  [[TicketQuery(priority=major&status=new|assigned|reopened&owner=patrick)]]
  [[TicketQuery(status=assigned|new|reopened&workingon=yes&group=owner&order=priority)]]

A simple way to build the parameters for these reports is to:

- Create a *Custom Query* from the *View Tickets* section.
- After creating the query, click *Save query* (at the bottom of the page).
- The query string can be copied from the *Query for Report* text box.

Note: Parameters like this, ``status=assigned&status=new&status=reopened`` will
need to be edited so they appear like this: ``status=assigned|new|reopened`` in
the ``TicketQuery``.

Style
=====

`WikiFormatting, Processors`_

::

  {{{
  #!html
  <h1 style="text-align: right;">Development Documentation</h1>
  }}}


.. _`WikiFormatting, Processors`: http://genshi.edgewall.org/wiki/WikiFormatting
