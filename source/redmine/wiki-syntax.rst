Wiki Syntax
***********

Links
=====

- http://hobix.com/textile/
- `Fermi Software Redmine`_

Bullet
======

::

  * Item
  * Another Item

Formatting
==========

Monospaced
----------

::

  @print 'hi'@

...or for multi-line:

::

  <pre>
  SELECT * FROM client WITH(NOLOCK)
      WHERE id = 1
  </pre>

...or for syntax highlighting:

::

  <pre>
    <code class="python">
      for i in names:
          print i
    </code>
  </pre>

Heading
=======

::

  h1. Main
  h2. Sub

Images
======

::

  !image_url!

Or... attach the image to the ticket, then link to it using the file name (and
extension):

::

  !attached_image.png!

*Note*:

- Do not put spaces in the file name of the image.
- Preview will not work until you have saved the attachment.

Links
=====

================================== ============================================
Description                        Example
================================== ============================================
Attachment                         ``attachment:file.zip``
Issue                              ``#97``
Link to page with different text   ``[[Guide|User manual]]``
Source code (rev + line number)    ``source:village/view.js@c4abeaa9a684#L49``
Version                            ``version:0.1.16``
================================== ============================================

Table
=====

::

  |_.Day of Week |_.Multi-pack |
  | 1 | 124855 |
  | 2 | 126944 |
  | 3 | 115299 |

Note: Don't put a space between the ``|_.`` characters on the headings.


.. _`Fermi Software Redmine`: https://cdcvs.fnal.gov/redmine/projects/fermi-redmine/wiki/RedmineWikiFormatting
