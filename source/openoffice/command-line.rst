Command Line
************

PDF
===

Links
-----

- `Convert documents (ODT, DOC) to PDF from the command-line`_

Install
-------

Install the linux, CUPS, PDF printer: :doc:`../linux/cups`.

Usage
-----

To convert a LibreOffice Draw file to PDF:

::

  libreoffice -invisible -norestore -pt CUPS-PDF diagram.odg

To convert all ODT files in the current directory:

::

  find . -name '*.odt' -exec libreoffice -invisible -norestore -pt CUPS-PDF '{}' \;

You’ll find PDF files in a folder called ``PDF``, in your home directory.

*Note*: The document will be printed using the default paper size for the
``CUPS-PDF`` printer.


.. _`Convert documents (ODT, DOC) to PDF from the command-line`: http://www.yamamoto.com.ar/blog/?p=50
