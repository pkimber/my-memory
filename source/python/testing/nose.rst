nose
****

Links
=====

- http://code.google.com/p/python-nose/
- http://somethingaboutorange.com/mrl/projects/nose/0.11.1/index.html
  nose extends unittest to make testing easier.

Install
=======

::

  pip install nose

Usage
=====

To run all the unit tests in this folder (and below):

::

  nosetests

To run all the tests in a single module:

::

  nosetests my_test.py

To run a single test:

::

  nosetests mdx_medialinks_test:MediaLinksTest.test_basic_usage

Note: In this example:

=========================  =======================================================
``mdx_medialinks_test``    Name of the module i.e. ``mdx_medialinks_test.py``
``MediaLinksTest``         Class name.
``test_basic_usage``       Test name.
=========================  =======================================================

Django
------

If using the Django nose plugin:

::

  django-admin.py test crm.tests.test_invoicing

Configuration
=============

Output
------

``nosetests`` will only display ``stdout`` for tests which fail.
To stop this behaviour:

::

  nosetests --nocapture

Stop
----

To stop after the first failed test:

::

  nosetests -x

Coverage
========

:doc:`coverage`:

::

  pip install coverage
  nosetests --nocapture -x --with-coverage --cover-package=modulename

Note: In the example above, ``modulename`` is the name of the module.
If you don't set this option, then you will get a coverage report for
everything in the ``site-packages`` folder.

Exclude
=======

To exclude a folder (or list of folders) from the tests, use the
nose-exclude_ plugin (which
I think is installed by default):

Create a text file listing the folders to be excluded e.g.  I create a file
called ``nose-exclude.txt``, here are some sample contents:

::

  pk/db/sql/
  test/integration/install/config/
  test/integration/pk/solr/

Run the normal ``nosetests`` command, passing in the name of the file:

::

  nosetests --exclude-dir-file=nose-exclude.txt

Issues
======

``PYTHONPATH``
--------------

Check your ``PYTHONPATH`` very carefully.  I am pretty sure the current
folder will not necessarily get included on the path.

Tests will not run.
-------------------

If your test won't run, make sure you have ``__init__.py`` files at each
level of the module structure.


.. _nose-exclude: http://bitbucket.org/kgrandis/nose-exclude/
