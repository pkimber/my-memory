Module/Packages
***************

Diagnostics
===========

``__file__``
------------

To see which package python is using, import the module and examine the
``__file__`` variable e.g:

::

  $ python
  >>> import os
  >>> os.__file__
  '/usr/lib/python2.5/os.pyc'

Graph
-----

`ActiveState Code, Recipe 577222: Create module dependency graph`_.

``sys.path``
------------

::

  $ python
  >>> import sys
  >>> for d in sys.path:
  ...     print repr(d)

Tracing
-------

(on linux)

::

  $ strace -o trace.out python -c 'import os'
  $ less trace.out

Package
=======

To create a package, ``xml`` which can be imported
e.g. ``import xml.create_site``, don't forget to create an
``__init__.py`` file inside the ``xml`` folder:

::

  Directory of c:\wip\xml

  01/09/2008  06:49    <DIR>          .
  01/09/2008  06:49    <DIR>          ..
  01/09/2008  06:47               358 create_site.py
  01/09/2008  06:49                 0 __init__.py


.. _`ActiveState Code, Recipe 577222: Create module dependency graph`: http://code.activestate.com/recipes/577222-create-module-dependency-graph/
