Variables
*********

.. highlight:: sql

`User-Defined Variables`_:

::

  mysql> SET @t1=1, @t2=2, @t3:=4;
  mysql> SELECT @t1, @t2, @t3, @t4 := @t1+@t2+@t3;


For SET, either ``=`` or ``:=`` can be used as the assignment operator.  You
can also assign a value to a user variable in statements other than ``SET``.
In this case, the assignment operator must be ``:=`` and not ``=`` because the
latter is treated as the comparison operator ``=`` in non-``SET`` statements


.. _`User-Defined Variables`: http://dev.mysql.com/doc/refman/5.0/en/user-variables.html
