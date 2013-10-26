Exceptions
**********

Links
=====

An excellent article!  *Effective Java Exceptions*:

::

  ../../misc/howto/java/dev2dev-effective-java-exceptions.pdf

...copy of `article by Barry Ruzek 01/10/2007`_

`Exception-Handling Antipatterns`_

Creating your own exceptions:
=============================

Chained Exceptions
------------------

`Chained Exception Facility`_

See ``MyNewException`` class in the `following project`_ for example code.

Throwing an exception of the ``MyNewException`` type will combine the stack
trace of the two exceptions (``MyNewException`` and ``cause``).

::

  public class MyNewException extends Exception {
      public MyNewException(final String msg, final Throwable cause) {
          super(msg, cause);
      }
  }

Simple Exception
----------------

This exception class has no way of recording the stack trace from another
exception.  Use the example class in the previous section for a simple way to
handle this situation.

Thinking in Java - Chapter 9, Page 381

::

  class SimpleException extends Exception {}

  class MyException extends Exception {
      public MyException() {}
      public MyException(String msg) { super(msg); }
  }

  // Throwable.getMessage( ) has been overridden to produce a more interesting detail
  // message. getMessage( ) is something like toString( ) for exception classes.

  class MyException2 extends Exception {
      private int x;
      public MyException2() {}
      public MyException2(String msg) { super(msg); }
      public MyException2(String msg, int x) {
          super(msg);
          this.x = x;
      }
      public int val() { return x; }
      public String getMessage() {
         return "Detail Message: "+ x + " "+ super.getMessage();
      }
  }

main
====

To catch exception in main you can just add the following to the catch
statement:

::

  e.printStackTrace();

Rethrowing an exception
=======================

http://www.faqs.org/docs/think_java/TIJ311.htm

Sometimes you'll want to rethrow the exception that you just caught,
particularly when you use Exception to catch any exception.  Since you already
have the reference to the current exception, you can simply rethrow that
reference:

::

  catch(Exception e) {
      System.err.println("An exception was thrown");
      throw e;
  }


.. _`article by Barry Ruzek 01/10/2007`: http://dev2dev.bea.com/pub/a/2006/11/effective-exceptions.html
.. _`Chained Exception Facility`: http://java.sun.com/j2se/1.4.2/docs/guide/lang/chained-exceptions.html
.. _`Exception-Handling Antipatterns`: http://today.java.net/pub/a/today/2006/04/06/exception-handling-antipatterns.html
.. _`following project`: http://g1/svn/home/patrick/test/test-exception-stack/
