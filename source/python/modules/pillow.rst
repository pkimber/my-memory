Python Imaging Library (PIL and pillow)
***************************************

Links
=====

- `Installing Python Imaging Library (PIL) under virtualenv or buildout`_

Install
=======

Pillow is a friendly fork of PIL (because PIL is not ``setuptools``
compatible):

https://pypi.python.org/pypi/Pillow/

Prerequisites
-------------

::

  sudo apt-get install libjpeg62-dev
  sudo apt-get install zlib1g-dev
  sudo apt-get install libfreetype6-dev
  sudo apt-get install liblcms1-dev

::

  pip install pillow

Windows
-------

Download

  Download ``PIL-1.1.6.win32-py2.5.exe``
  from http://www.pythonware.com/products/pil/

Install

  Run the installer (if using Vista, run as Administrator).

Usage
=====

::

  $ python
  >>> from PIL import Image
  >>> im = Image.open('harp.jpg')
  >>> print im.format, im.size, im.mode
  JPEG (437, 599) RGB

Issues
======

Try a pip uninstall, followed by an install.  If new dependencies have been
installed, then pillow might be able to support more file formats::

  pip uninstall pillow
  pip install pillow


.. _`Installing Python Imaging Library (PIL) under virtualenv or buildout`: http://blog.mfabrik.com/2009/11/19/installing-python-imaging-library-pil-under-virtualenv-or-buildout/
