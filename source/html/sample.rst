Sample
******

.. highlight:: html

HTML5
=====

::

  <!doctype html>
  <html lang=en>
    <head>
      <!-- style includes here.. -->
      <link rel="stylesheet" type="text/css" href="mystyle.css" />
      <!-- script includes here.. -->
      <script type="text/javascript" src="jquery-1.4.2.min.js"></script>
      <title>Interesting blog</title>
      <meta charset=utf-8>
    </head>
    <body>
      <p>Today I drank coffee.</p>
    </body>
  </html>

Image Maps
==========

See :doc:`image-maps`

Search Form
===========

::

  <form name="input" action="/search" method="get">
      <input type="text" name="q" />
      <input type="submit" value="Submit" />
  </form>

To submit the form using an image rather than a button, replace the
``submit`` control with the following:

::

  <input type="image" src="media/img/button-search.jpg" alt="Submit" />

xhtml
=====

- `my_page_layout`_
- sample.html_
- simple.html_


.. _`my_page_layout`: http://toybox/hg/sample/file/tip/css/my_page_layout/
.. _sample.html: ../misc/howto/css/sample.html
.. _simple.html: ../misc/howto/css/simple.html
