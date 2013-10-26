min and max
***********

.. highlight:: c++

Make sure your code compiles in the presence of the ``min()`` and ``max()``
macros.  Some platform headers define ``min()`` and ``max()`` macros which
cause some common C++ constructs to fail to compile.  Some simple tricks can
protect your code from inappropriate macro substitution:
Guidelines_


.. _Guidelines: http://www.boost.org/more/lib_guide.htm#Guidelines

