Gotcha!
*******

Default Arguments
=================

- `Mutable defaults for function/method arguments`_
- `Default arguments in Python: two easy blunders`_

Do not use mutable arguments i.e. list, dictionary, or a class instance e.g:

::

  def functionF(argString="abc", argList=[]):

The objects that provide the default values are not created at the time that
``functionF`` is called.  They are created at the time that the statement
that defines the function is executed.

In this example, the ``string`` argument will behave *as expected* because it
is immutable.

To solve the problem, use ``None`` e.g:

::

  def functionF(argString="abc", argList=None):
      if argList is None: argList = []


.. _`Mutable defaults for function/method arguments`: http://www.ferg.org/projects/python_gotchas.html#contents_item_6
.. _`Default arguments in Python: two easy blunders`: http://www.deadlybloodyserious.com/2008/05/default-argument-blunders/
