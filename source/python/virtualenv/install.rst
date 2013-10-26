Install
*******

NOTE
====

Probably best to keep the python installed on your computer as *clean* as
possible.  I had to remove python (and the python scripts) folder from the
``PATH`` environment variable to stop the two environments clashing...

Install
=======

Linux (default python)
----------------------

- :doc:`../install/linux`

Linux (Multiple version of Python)
----------------------------------

`Setting Up Python For Plone On Jaunty`_...

If using Ubuntu Linux and a **different version** of python than the default:

::

  sudo apt-get install python-virtualenv

Note: Don't use ``virtualenvwrapper`` if you need to install this package.

Windows
-------

::

  easy_install virtualenv


.. _`Setting Up Python For Plone On Jaunty`: http://sam.stainsby.id.au/blog/?p=28
