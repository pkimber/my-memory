Diagnostics
***********

Debug
=====

- `DebugFooter middleware with Pygments sql syntax highlighting`_
- `Breakpoints in NetBeans`_:
- :doc:`debug/toolbar`

::

  I have always found the built-in
  Python debugger pdb to be invaluable. Just put the following wherever
  you need a breakpoint;
  import pdb; pdb.set_trace()
  and the debugger will show in the console.

Pretty Error Page
=================

To view the state of your application using the Django error page, add the
following into your view:

::

  Assert false


.. _`DebugFooter middleware with Pygments sql syntax highlighting`: http://www.djangosnippets.org/snippets/799/
.. _`Breakpoints in NetBeans`: http://groups.google.com/group/django-users/msg/67a6753e4ad381b5?hl=en

