Standards
*********

Interface
---------

*See notes below 15/10/2007 08:37*:

Use the ``I`` prefix:

::

  public interface IMyWorker

...or not?

`IFoo or just Foo? Please stop naming interfaces IFoo`_.

15/10/2007 08:37
----------------

Not so sure this is such a good idea any more...  I quite like the Hibernate
search way where they:

- Name the interfaces with the simple name e.g. ``Document``.
- Put the implementations into a ``impl`` sub-folder.
- Append ``impl`` to the end of the class name for the implementation e.g.
  ``SimpleDocumentImpl``.


.. _`IFoo or just Foo? Please stop naming interfaces IFoo`: http://javathink.blogspot.com/2007/07/ifoo-or-just-foo.html

