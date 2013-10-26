Exceptions
**********

Transactions
============

From `Exception-Handling Antipatterns`_ by Tim McCune.

EJB 2
-----

The creators of the EJB 2 specification decided to make use of the distinction
between checked and unchecked exceptions to determine whether or not to roll
back the active transaction.  If an EJB throws a checked exception, the
transaction still commits normally.  If an EJB throws an unchecked exception,
the transaction is rolled back.  You almost always want an exception to roll
back the active transaction.  It just helps to be aware of this fact when
working with EJBs.

EJB 3
-----

To somewhat alleviate the problem that I just described, EJB 3 has added an
``ApplicationException`` annotation with a rollback element.  This gives you
explicit control over whether or not your exception (either checked or
unchecked) should roll back the transaction.  For example:

::

  @ApplicationException(rollback=true)
  public class FooException extends Exception



.. _`Exception-Handling Antipatterns`: http://today.java.net/pub/a/today/2006/04/06/exception-handling-antipatterns.html

