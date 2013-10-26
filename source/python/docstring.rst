docstring
*********

Links
=====

- http://docutils.sourceforge.net/docs/peps/pep-0257.html
  PEP 257, Docstring Conventions.
- :doc:`apps/pykaboo`

What is a Docstring?
====================

- A docstring is a string literal that occurs as the first statement in a
  *module*, *function*, *class*, or *method* definition.  Such a docstring
  becomes the ``__doc__`` special attribute of that object.

Standards
=========

- All modules should normally have docstrings.
- All functions and classes exported by a module should have docstrings.
- Public methods (including the ``__init__`` constructor) should also have
  docstrings.
- A package may be documented in the module docstring of the ``__init__.py``
  file in the package directory.
- For consistency, always use ``"""``*triple double quotes*``"""`` around
  docstrings.  Use ``r"""``*raw triple double quotes*``"""`` if you use any
  backslashes in your docstrings.  For Unicode docstrings, use
  ``u"""Unicode triple-quoted strings"""``.

One-line Docstrings
-------------------

One-liners are for really obvious cases.  They should really fit on one line.
For example:

::

  def kos_root(self):
      """Return the pathname of the KOS root directory."""
      return self._kos_root

Note:

- Triple quotes are used even though the string fits on one line.  This makes
  it easy to later expand it.
- The closing quotes are on the same line as the opening quotes.  This looks
  better for one-liners.
- There's no blank line either before or after the docstring.
- The docstring is a phrase ending in a period.  It prescribes the function or
  method's effect as a command ("*Do this*", "*Return that*"), not as a
  description; e.g. don't write "*Returns the pathname ...*".
- The one-line docstring should *NOT* be a "*signature*" reiterating the
  function/method parameters (which can be obtained by introspection). Don't do:

  ::

    def function(a, b):
        """function(a, b) -> list"""

  However, the nature of the return value cannot be determined by
  introspection, so it should be mentioned.  The preferred form for such a
  docstring would be something like:

  ::

    def function(a, b):
        """Do X and return a list."""

Multi-line Docstrings
---------------------

- Multi-line docstrings consist of a summary line just like a one-line
  docstring, followed by a blank line, followed by a more elaborate
  description.
- The summary line may be used by automatic indexing tools; it is important
  that it fits on one line and is separated from the rest of the docstring by a
  blank line.
- The summary line may be on the same line as the opening quotes or on the next
  line (*17/02/2011, I like it on the next line*).
- The entire docstring is indented the same as the quotes at its first line
  (see example below).

  ::

    def complex(real=0.0, imag=0.0):
        """
        Form a complex number.

        Keyword arguments:
        real -- the real part (default 0.0)
        imag -- the imaginary part (default 0.0)

        """
        if imag == 0.0 and real == 0.0: return complex_zero

Class
-----

- Insert a blank line before and after all docstrings (one-line or multi-line)
  that document a class - generally speaking, the class's methods are separated
  from each other by a single blank line, and the docstring needs to be offset
  from the first method by a blank line; for symmetry, put a blank line between
  the class header and the docstring.
- The docstring for a class should summarize its behavior and list the public
  methods and instance variables.
- If the class is intended to be subclassed, and has an additional interface
  for subclasses, this interface should be listed separately (in the
  docstring).
- The class constructor should be documented in the docstring for its
  ``__init__`` method.
- Individual methods should be documented by their own docstring.
- If a class subclasses another class and its behavior is mostly inherited from
  that class, its docstring should mention this and summarize the differences.

  Use the verb "override" to indicate that a subclass method replaces a
  superclass method and does not call the superclass method; use the verb
  "extend" to indicate that a subclass method calls the superclass method (in
  addition to its own behavior).

Functions and Methods
---------------------

- Docstrings documenting functions or methods generally don't have the
  requirement to insert a blank line before and after, unless the function or
  method's body is written as a number of blank-line separated sections - in
  this case, treat the docstring as another section, and precede it with a
  blank line.
- The docstring for a function or method should summarize its behavior and
  document its arguments, return value(s), side effects, exceptions raised, and
  restrictions on when it can be called (all if applicable).
- Optional arguments should be indicated.
- It should be documented whether keyword arguments are part of the interface.
- The docstring should document the argument names.  It is best to list each
  argument on a separate line (see example above).

Modules and Packages
--------------------

- The docstring for a module should generally list the classes, exceptions and
  functions (and any other objects) that are exported by the module, with a
  one-line summary of each (these summaries generally give less detail than the
  summary line in the object's docstring.)
- The docstring for a package (i.e., the docstring of the package's
  ``__init__.py`` module) should also list the modules and subpackages exported
  by the package.

Script
------

- The docstring of a script (a stand-alone program) should be usable as its
  "usage" message, printed when the script is invoked with incorrect or missing
  arguments (or perhaps with a "``-h``" option, for "*help*").

  Such a docstring should document the script's function and command line
  syntax, environment variables, and files.

  Usage messages can be fairly elaborate (several screens full) and should be
  sufficient for a new user to use the command properly, as well as a complete
  quick reference to all options and arguments for the sophisticated user.

View
====

Use the ``help`` method to view the ``docstring`` comments for a class:

::

  >>> from trac.ticket import Ticket
  >>> help(Ticket)
