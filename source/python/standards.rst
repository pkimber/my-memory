Coding Style
************

Links
=====

- Download *Python Coding Idioms* from the `The Python Journal`_.
- `Style Guide for Python Code, Guido van Rossum`_

Class
=====

Filename
--------

See *Module* names below.

Name
----

- Classes use the ``CapWords`` naming convention.
- Classes for internal use have a leading underscore in addition.

Methods
-------

lowercase with words separated by underscores as necessary to improve
readability:

- *Interface* methods are presented without a prefix.
- Use one leading underscore only for non-public methods and instance variables
  (*internal* methods which may be over-ridden are prefixed by a single
  underscore).
- *Private* methods are prefixed by a double underscore.

Variables
---------

Use the function naming rules: lowercase with words separated by underscores as
necessary to improve readability.

Line Length
===========

Limit all lines to a maximum of 79 characters.

Constants
=========

Constants are usually declared on a module level and written in all capital
letters with underscores separating words.

Examples include ``MAX_OVERFLOW`` and ``TOTAL``.

Module
======

Modules should have short, all-lowercase names.  Underscores can be used in the
module name if it improves readability.

Package Names
=============

Packages should have short, all-lowercase names, the use of underscores is
discouraged.


.. _`The Python Journal`: http://pyjournal.cgpublisher.com/
.. _`Style Guide for Python Code, Guido van Rossum`: http://www.python.org/dev/peps/pep-0008/
