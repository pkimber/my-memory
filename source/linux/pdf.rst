PDF (Command Line)
******************

.. highlight:: bash

:doc:`gnome/pdf`

Compress
========

Thank you `Alfred Klomp`_ for this script...

Download ``shrinkpdf.sh`` from:
http://www.alfredklomp.com/programming/shrinkpdf/

Move it to ``~/bin/`` and make it executable.

A sample command::

 shrinkpdf.sh  setup.pdf out.pdf 100

.. tip:: The output resolution in this example is ``100``.
         The parameter is optional.
         The default resolution is 72 DPI.

Data
====

I haven't tried https://github.com/measuresforjustice/textricator,
but this article recommends it, `Textricator: Data extraction made simple`_

Images
======

To extract PNG images from a PDF file::

  pdftoppm briefing.pdf briefing -png

or::

  pdfimages -j ..plan.pdf out

Will produce the following output::

  ls
  out-000.ppm  out-001.ppm  out-002.jpg

Note: PPM format is a lowest common denominator color image file format.

Pages
=====

::

  sudo apt-get install pdftk

::

  pdftk myoldfile.pdf cat 1 2 4 5 output mynewfile.pdf
  pdftk myoldfile.pdf cat 1-2 4-5 output mynewfile.pdf

Merge::

  pdftk pg01.pdf pg02.pdf pg04.pdf pg05.pdf output mynewfile.pdf

Text
====

To extract text from a PDF file (I am not sure where ``pdftotext`` came from!)::

  pdftotext fundraising.pdf

.. note:: This command will create a ``fundraising.txt`` output file.


.. _`Alfred Klomp`: http://www.alfredklomp.com/
.. _`Textricator: Data extraction made simple`: https://opensource.com/article/18/7/textricator
