Issues
******

Unable to decode input data
===========================

I had a pound sign in one of my documents and the ``sphinx-build``
produced the following error:

::

  reading sources... wip Sphinx error:
  Unable to decode input data.  Tried the following encodings: 'utf-8'.
  (UnicodeDecodeError: 'utf8' codec can't decode byte 0xa3 in position 326: unexpected code byte)

To solve the problem, save the text file in unicode (``UTF-8`` format).
