Development
***********

.. highlight:: c++

Branches
========

::

  svn co https://poco.svn.sourceforge.net/svnroot/poco/poco-1.3.6 poco-1.3.6

Sandbox
=======

Links
-----

- http://poco.svn.sourceforge.net/viewvc/poco/sandbox/
- `JSON Support in the Sandbox`_

Subversion
----------

::

  svn co https://poco.svn.sourceforge.net/svnroot/poco/sandbox poco-sandbox

Build
-----

Open the Microsoft Visual Studio solution, ``Web_VS90.sln`` (in the ``Web``
folder).

Note: I couldn't get the project to build.  Had a missing include file:
``Var.h`` which is included by ``JSONEntity.h``.


.. _`JSON Support in the Sandbox`: http://pocoproject.org/blog/?p=246

