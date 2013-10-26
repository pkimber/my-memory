PYTHONPATH
**********

Links
=====

- :doc:`site-packages`

Display
=======

::

  >>> import sys
  >>> for i in sys.path:
  ...     print i

egg
===

If you have several ``.egg`` folders in ``site-packages`` then look at
the ``easy-install.pth`` file to see which ones are in use e.g:

::

  cat site-packages/easy-install.pth

Folder
======

To find the location of your ``site-packages`` file:

::

  python -c "from distutils.sysconfig import get_python_lib; print get_python_lib()"

Linux
=====

::

  PYTHONPATH=.:../my_app; export PYTHONPATH

Note: Separator on linux is a ``:``.
