Getting Started
***************

Links
=====

- :doc:`../../../markup/restructuredtext/syntax`
- http://sphinx.pocoo.org/
- http://showmedo.com/videotutorials/video?name=2910020&fromSeriesID=291

Install
=======

::

  pip install sphinx

Getting Started
===============

Change into your project folder and run::

  sphinx-quickstart

Here are some suggested values to use::

  > Root path for the documentation [.]:
  > Separate source and build directories (y/N) [n]: y
  > Name prefix for templates and static dir [.]:
  > Project name: env_lib_python
  > Author name(s): Patrick Kimber
  > Project version: 0.1
  > Project release [0.1]:
  > Source file suffix [.rst]:
  > Name of your master document (without suffix) [index]:
  > autodoc: automatically insert docstrings from modules (y/N) [n]: y
  > doctest: automatically test code snippets in doctest blocks (y/N) [n]: y
  > intersphinx: link between Sphinx documentation of different projects (y/N) [n]: y
  > Create Makefile? (Y/n) [n]:

To do the initial build:

Windows::

  cd doc
  make.bat html

Linux::

  cd doc;make html;cd ..

- To view the initial documentation, browse to ``build/html/index.html``.
- To add documents to the build, see :doc:`documentation`.
- To add module documentation, see :doc:`modules`.
