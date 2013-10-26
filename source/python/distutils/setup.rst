Setup
*****

Links
=====

- :doc:`getting-started`.
- Sample: ``sample/python/distutils/simple-booking-engine/setup.py``
- `PEP 386, The new versioning algorithm`_

Sample
======

Notes:

- ``packages``, for multi-file modules, this is the name of the folder
  containing the actual source code i.e. the folder with the ``__init__`` file.
- ``version``, python packages generally adhere to the version format
  ``major.minor[.patch][sub]``:

  - The major number is 0 for initial, experimental releases of software.  It
    is incremented for releases that represent major milestones in a package.
  - The minor number is incremented when important new features are added to
    the package.
  - The patch number increments when bug-fix releases are made.
  - Additional trailing version information is sometimes used to indicate
    sub-releases.  These are "a1,a2,...,aN" (for alpha releases, where
    functionality and API may change), "b1,b2,...,bN" (for beta releases, which
    only fix bugs) and "pr1,pr2,...,prN" (for final pre-release release
    testing).

  Some examples:

  ::

    0.1.0     the first, experimental release of a package.
    1.0.1a2   the second alpha release of the first patch version of 1.0.

- ``classifiers``, for a list, see: `list of classifiers`_.
- This article on `Semantic Versioning`_ also looks interesting.


.. _`PEP 386, The new versioning algorithm`: http://www.python.org/dev/peps/pep-0386/#the-new-versioning-algorithm
.. _`list of classifiers`: http://pypi.python.org/pypi?:action=list_classifiers
.. _`Semantic Versioning`: http://semver.org/
