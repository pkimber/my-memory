Robots
******

Links
=====

- http://www.robotstxt.org/orig.html
- `Block or remove pages using a robots.txt file`_

Usage
=====

- Create a simple text file called ``robots.txt``.
- The content should be similar to the *Sample* below...
- Copy the file to the root of your site.
- If using Google webmaster tools, then use the *Site configuration*, *Crawler
  access* tools to review the update.

Sample
======

Simple
------

::

  User-agent: *
  Allow: /

Remove
------

::

  User-agent: *
  Disallow: /folder1/
  Disallow: /private_file.html

Note:

- I think the ``Disallow`` directive in the previous example i.e.
  ``/folder1/``, will exclude everything within that folder
  (http://www.dailyblogtips.com/create-a-robotstxt-file/).
- If you want to use a wild-card, then the following article might help:
  http://seogadget.co.uk/wildcards-in-robots-txt/


.. _`Block or remove pages using a robots.txt file`: http://www.google.com/support/webmasters/bin/answer.py?hl=en&answer=156449

