Configuration
*************

Dependencies
============

Working from the sample: buildout.cfg_ file, to add a dependency, edit
``setup.py`` and add (for example), ``sqlalchemy``:

::

  install_requires=['pyephem', 'sqlalchemy'],

Source
======

`How can I develop against another package's source code`_, before it gets
packaged up as an egg?

Working from the sample: buildout.cfg_ file:

To use the source code of a package:

- Checkout the source code into the current folder e.g. ``sqlalchemy``.
- Add the dependency as normal (see *Dependencies* above).
- Add the module name (folder) to the ``develop`` line in the
  ``buildout.cfg`` file:

  ::

    [buildout]
    develop = . sqlalchemy

  Note: The ``.`` in the ``develop`` property, tells buildout to use the
  ``setup.py`` file in the local folder.

Version
=======

To use a different version of python, just execute ``bootstrap.py`` with a
specific version e.g:

::

  python2.4 bootstrap.py


.. _buildout.cfg: http://toybox/hg/sample/file/tip/python/buildout/sample-rhodesmill-org-brandon/lunar/buildout.cfg
.. _`How can I develop against another package's source code`: http://rhodesmill.org/brandon/buildout/
.. _buildout.cfg: http://toybox/hg/sample/file/tip/python/buildout/sample-rhodesmill-org-brandon/lunar/buildout.cfg

