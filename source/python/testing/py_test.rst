py.test
*******

Links
=====

`A simple way of running your tests from within VIM`_

Install
=======

::

  pip install pytest

Parameters
==========

Stop on first failure:

::

  py.test -x

Disable capturing:

::

  py.test -s

Select tests:

::

  py.test -k test_simple

Debug
=====

To use ``ipdb``, then run with the ``-s`` parameter...

If you don't do this, you will get the following nasty/misleading error:

::

  AttributeError: DontReadFromInput instance has no attribute 'encoding'

Discovery
=========

`Conventions for Python test discovery`_

- ``test_*.py`` or ``*_test.py`` files, imported by their package name.
- ``Test`` prefixed test classes (without an ``__init__`` method).
- ``test_`` prefixed test functions or methods are test items.

Plugins
=======

Django
------

I have been using this plugin:

::

  pip install pytest-django

To run the Django tests, make sure ``DJANGO_SETTINGS_MODULE`` is defined, then:

::

  py.test -x

PEP 8
-----

http://pypi.python.org/pypi/pytest-pep8/


.. _`A simple way of running your tests from within VIM`: https://github.com/alfredodeza/pytest.vim
.. _`Conventions for Python test discovery`: http://doc.pytest.org/en/latest/goodpractises.html#test-discovery
