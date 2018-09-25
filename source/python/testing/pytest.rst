pytest
******

.. highlight:: bash

Links
=====

`A simple way of running your tests from within VIM`_

Install
=======

::

  pip install pytest

Assert
======

Extra data:

.. code-block:: python

  assert a % 2 == 0, "value was odd, should be even"

Exception:

.. code-block:: python

  import pytest

  with pytest.raises(RuntimeError) as excinfo:
      def f():
          f()
      f()
  assert 'maximum recursion' in str(excinfo.value)

Parametrize
===========

.. code-block:: python

  @pytest.mark.parametrize("state,expected", [
      (Document.SYNCED, True),
      (Document.MODIFIED, False),
      (Document.NEW, True),
  ])
  def test_can_edit(state, expected):


Parameters
==========

Stop on first failure::

  pytest -x

Disable capturing::

  pytest -s
  # no stdout or stderr
  pytest -x --show-capture=no
  # no stderr
  pytest -x --show-capture=stdout

Select tests::

  pytest -k test_simple

  # to select a function in a module, remove '-k'
  pytest dash/tests/test_view.py::test_document_detail

Modify traceback::

  pytest -x --tb=short

For more information, see `Modifying Python traceback printing`_

Debug
=====

To use ``pdb``, then:

.. code-block:: python

  import pytest
  pytest.set_trace()

To use ``ipdb``, then run with the ``-s`` parameter...  If you don't do this,
you will get the following nasty/misleading error::

  AttributeError: DontReadFromInput instance has no attribute 'encoding'

Diff
====

To display more data in the diff (for ``dict`` and sequences), use
:ref:`unittest_maxdiff` or use the simpler `assert with the assert statement`_
syntax e.g::

  assert {'data': ['message']} == response.data

Issues
======

I had this error: `IndexError: list index out of range`_.  To solve the issue::

  pytest -x --tb=native

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

  pytest --cov .

.. note:: The ``.`` is important.  This needs to be the folder you want
          coverage to report on.

Django app example::

  pytest -x --reuse-db --cov-report html --cov job

Django
------

I have been using this plugin::

  pip install pytest-django

To write a test which needs to access the database::

  import pytest

  @pytest.mark.django_db
  def test_audit():
     # write your test

To run the Django tests, make sure ``DJANGO_SETTINGS_MODULE`` is defined,
then::

  pytest -x

The ``-x`` option stops the tests on the first failure.

To ``print`` or use ``ipdb``, use the ``-s`` option::

  pytest -x -s
  # or
  import pytest
  pytest.set_trace()

.. note::

  ``pytest`` will cache the database structure to speed up test runs.  To
  re-initialise the database, use the ``--create-db`` option::

    pytest -x --create-db

Flakes
------

::

  pip install pytest-flakes
  pytest --flakes

PEP 8
-----

http://pypi.python.org/pypi/pytest-pep8/::

  pip install pytest-pep8

  pytest --pep8
  # to clear the cache
  pytest --pep8 --clearcache

Sugar
-----

http://pivotfinland.com/pytest-sugar/::

  pip install pytest-sugar

Nothing else to do.

Time
----

Freeze time!
https://github.com/ktosiek/pytest-freezegun

Watch
-----

https://pypi.python.org/pypi/pytest-watch/::

  pip install pytest-watch

Usage::

  py.test.watch
  # or ptw


.. _`A simple way of running your tests from within VIM`: https://github.com/alfredodeza/pytest.vim
.. _`assert with the assert statement`: http://pytest.readthedocs.org/en/2.0.3/assert.html#assert-with-the-assert-statement
.. _`Conventions for Python test discovery`: http://doc.pytest.org/en/latest/goodpractises.html#test-discovery
.. _`IndexError: list index out of range`: https://bitbucket.org/pytest-dev/pytest/issue/754/cant-render-tracebacks-that-have-missing
.. _`Modifying Python traceback printing`: https://pytest.org/latest/usage.html#modifying-python-traceback-printing
.. _Skipping: http://pytest.org/latest/skipping.html#skipping
