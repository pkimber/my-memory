py.test
*******

.. highlight:: bash

Links
=====

`A simple way of running your tests from within VIM`_

Install
=======

::

  pip install pytest

Parameters
==========

Stop on first failure::

  py.test -x

Disable capturing::

  py.test -s

Select tests::

  py.test -k test_simple

Modify traceback::

  py.test -x --tb=short

For more information, see `Modifying Python traceback printing`_

Debug
=====

To use ``ipdb``, then run with the ``-s`` parameter...

If you don't do this, you will get the following nasty/misleading error::

  AttributeError: DontReadFromInput instance has no attribute 'encoding'

Diff
====

To display more data in the diff (for ``dict`` and sequences), use
:ref:`unittest_maxdiff` or use the simpler `assert with the assert statement`_
syntax e.g::

  assert {'data': ['message']} == response.data

Mark
====

Skipping_:

.. code-block:: python

  import pytest

  @pytest.mark.skipif(date.today() < date(2014, 9, 5),
      reason='cannot test this for a couple of days...')
  def test_contact_template(self):
      pass

Discovery
=========

`Conventions for Python test discovery`_

- ``test_*.py`` or ``*_test.py`` files, imported by their package name.
- ``Test`` prefixed test classes (without an ``__init__`` method).
- ``test_`` prefixed test functions or methods are test items.

Plugins
=======

Coverage
--------

https://pypi.python.org/pypi/pytest-cov::

  pip install pytest-cov

  py.test --cov .

Django
------

I have been using this plugin::

  pip install pytest-django

To run the Django tests, make sure ``DJANGO_SETTINGS_MODULE`` is defined,
then::

  py.test -x

The ``-x`` option stops the tests on the first failure.

To ``print`` or use ``ipdb``, use the ``-s`` option::

  py.test -x -s

.. note::

  ``py.test`` will cache the database structure to speed up test runs.  To
  re-initialise the database, use the ``--create-db`` option::

    py.test -x --create-db

Flakes
------

::

  pip install pytest-flakes
  py.test --flakes

PEP 8
-----

http://pypi.python.org/pypi/pytest-pep8/::

  pip install pytest-pep8

  py.test --pep8
  # to clear the cache
  py.test --pep8 --clearcache

Sugar
-----

http://pivotfinland.com/pytest-sugar/::

  pip install pytest-sugar

Nothing else to do.


.. _`A simple way of running your tests from within VIM`: https://github.com/alfredodeza/pytest.vim
.. _`assert with the assert statement`: http://pytest.readthedocs.org/en/2.0.3/assert.html#assert-with-the-assert-statement
.. _`Conventions for Python test discovery`: http://doc.pytest.org/en/latest/goodpractises.html#test-discovery
.. _`Modifying Python traceback printing`: https://pytest.org/latest/usage.html#modifying-python-traceback-printing
.. _Skipping: http://pytest.org/latest/skipping.html#skipping
