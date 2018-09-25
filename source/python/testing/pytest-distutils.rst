py.test distutils
*****************

Links
=====

- http://pytest.org/goodpractises.html

Integrating with distutils
==========================

You can easily integrate test runs into your ``distutils`` or ``setuptools``
based project.  Use the ``genscript`` method to generate a standalone
``py.test`` script:

::

  py.test --genscript=runtest.py

...and make this script part of your distribution and then add this to your
``setup.py`` file:

::

  from distutils.core import setup, Command
  # you can also import from setuptools

  class PyTest(Command):
      user_options = []
      def initialize_options(self):
          pass
      def finalize_options(self):
          pass
      def run(self):
          import sys,subprocess
          errno = subprocess.call([sys.executable, 'runtest.py'])
          raise SystemExit(errno)
  setup(
      #...,
      cmdclass = {'test': PyTest},
      #...,
  )

If you now type:

::

  python setup.py test

...this will execute your tests using ``runtest.py``.  As this is a standalone
version of ``py.test`` no prior installation whatsoever is required for
calling the test command.  You can also pass additional arguments to the
subprocess-calls like your test directory or other options.
