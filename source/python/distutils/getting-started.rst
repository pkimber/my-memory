Getting Started
***************

Links
=====

- :doc:`links`
- :doc:`setup`
- Sample project: ``sample/python/distutils/simple-booking-engine/``

Getting Started
===============

For simple python modules, follow these instructions (for *Django* see
:doc:`../../django/deploy/distutils`):

Make a root directory to hold everything.  Give it the same name as your
module.  Use the ``-`` character as the separator e.g.
``simple-booking-engine``.

To accomodate Windows users, your "read me" file should include a ``.txt``
extension, and it should use Windows-style carriage returns.

To convert the file to DOS format::

  todos README.txt

If your Python software is a single ``.py`` file, you should put it in the
root directory along with your ``README.txt`` file and your ``setup.py``
script.

  If your project is a multi-file module, create a folder with the same name
  as your root directory (replacing the ``-`` separator with the under-score
  e.g. ``simple_booking_engine``), and create an ``__init__.py`` file within
  it.

Download the appropriate license into the root folder e.g::

  wget http://www.apache.org/licenses/LICENSE-2.0.txt -O LICENSE

Create your setup script in the root folder, ``setup.py``::

  touch setup.py

See :doc:`setup` for details...

Create a manifest file, and list files which are not included in the build
by default::

  touch MANIFEST.in

See :doc:`manifest` for details...

Test
====

To integrate ``py.test`` (very clever) with your project, see
:doc:`../testing/py_test-distutils`.

*Note*: The standard ``distutils`` test command, ``python setup.py check``
doesn't seem to work on my version of python.

Build
=====

To build a source distribution::

  python setup.py clean sdist --dry-run
  python setup.py clean sdist

Install
=======

The source distribution can be installed from the archive::

  pip install ~/sample/python/distutils/simple-booking-engine/dist/simple-booking-engine-0.1.0.tar.gz

Tips
----

To list the contents of the archive::

  tar -ztvf ~/repo/wcc/whatson/dist/django-whatson-0.1.0.tar.gz
