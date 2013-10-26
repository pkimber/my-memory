Build
*****

Prerequisites
=============

Sphinx
------

To build the documentation you will need to install Sphinx_:

::

  easy_install -U Sphinx

Checkout
========

Checkout from SVN:

::

  cd \src\
  svn co http://code.djangoproject.com/svn/django/trunk/ django-trunk

Build
=====

Documentation
-------------

::

  cd \src\django-trunk\docs\
  \tools\Python25\Scripts\sphinx-build.exe -b htmlhelp . \temp\django-docs

Note:

- The last parameter is the output folder.
- The format here is ``htmlhelp``.  Other options are ``html``...


.. _Sphinx: http://sphinx.pocoo.org/

