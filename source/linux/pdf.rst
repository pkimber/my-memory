PDF
***

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

Images
======

To extract images from a PDF file::

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


.. _`Alfred Klomp`: http://www.alfredklomp.com/
