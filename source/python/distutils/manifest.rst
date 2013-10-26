Manifest
********

The manifest file will list files which are not included in the build by
default.

*Note*: By default, ``distutils`` will include the following files in your
release package:

- ``README.txt``
- ``setup.py``
- The ``.py`` files needed by the multi-file modules listed in the
  packages parameter.
- The individual ``.py`` files listed in the ``py_modules`` parameter.

Syntax
======

Taking this sample
``sample/python/distutils/simple-booking-engine/MANIFEST.in`` file.

::

  include LICENSE
  recursive-include docs *.html *.css *.png *.gif

Sample from a Django project:

::

  include LICENSE
  include MANIFEST.in
  include README.rst
  recursive-include docs *
  recursive-include simple-booking-engine/templates *

Note:

- The first line is self-explanatory; include the ``LICENSE`` file from the
  project's root directory.
- The second line is a bit more complicated; the ``recursive-include``
  command takes a directory name and one or more filenames.  The filenames
  aren't limited to specific files; they can include wildcards.
