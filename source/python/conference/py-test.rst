py.test - PyCon UK 2008
***********************

Links
=====

- `The py.test tool and library`_

Notes
=====

- Automatically collects and executes tests.
- Install

  ::

    easy_install -U py

- Not inherited from a test class.
- To create a temporary directory.

  ::

    datadir = py.test.ensuretemp("folder-name")

  Updates environment so we can easily ``cd`` into this folder.

- Just use a simple ``assert`` to check the condition:

  ::

    pkg = datadir.ensure('pkg'), dir=1)
    pkg.ensure("__init__.py")
    assert pkg.pypkpath() == pkg

- To run the tests:

  ::

    py.test test.py
    py.test test.py --showlocals

- To only run a test if it is running in Windows:

  ::

    disabled = py.std.sys.platform != 'win32'

- Generative (Parametized) tests (creating three tests with yield):

  ::

    def check(x):
        assert x >= 0

    def test_gen():
        for x in 1,2,3:
            yield check, x

- ``stdout/stderr`` is captured per test.
- ``-l`` or ``--showlocals``
- ``--pdb`` directly debug.
- ``-k``, select test be keyword.
- ``-v``, verbose output.
- ``-test-name`` everything that is not this test
- ``-x`` or ``exitfirst``, exist on first failure.
- ``--looponfailing``, only re-run failing test parts.
- ``setup_class(cls)`` and ``setup_method(self, method)``, to
  set-up for the class and for the method (also ``setup_module``).

  Can get the class name (``cls.__name__``) and the method name,
  ``method.__name__``.

  Can set attributes on the class and method objects.

  Could use the set-up module method for deploying or for creating expensive
  resources.

- Skip tests:

  ::

    if sys.platform != "win32":
      py.test.skip("win32 required")

  You can also place such calls in setup functions.

- Can add project level attributes such as ``--runslowtests``.
- ``doctests``, is getting better... ``py.test`` automatically collects
  ``test_doc.txt`` files:

  Will automatically run ``doctests``.

- ``easy_install``, will get a slightly older version.
- Customise:

  - Modify test collection process
  - Add command line options.
  - register to reporting files (version 1.0)
  - write ``conftest.py`` files.
  - for debugging:

      ::

        py.test --collectonly

- Directory.. collect files in a folder... and loads of other things...
- Place ``conftest.py`` file in a directory.
- Plugins:

  - Generate an html file, showing the failures (plugin I think).
  - Can run JavaScript tests using Spider Monkey.
  - Can run cross platform tests.
  - Can run standard ``unittest`` methods.


.. _`The py.test tool and library`: http://codespeak.net/py/dist/test.html

