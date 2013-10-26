Exceptions
**********

Links
=====

- `Best Practices for Handling Exceptions`_
- `Using User-Defined Exceptions`_
- `What Happens When My Application Throws An Unhandled Exception`_

Catch
=====

::

  try
  {
      // do something
  }
  catch (Exception e)
  {
      logger.Error("Cannot create folder", e);
  }

User Defined Exceptions
=======================

*...for most applications, derive custom exceptions from the
ApplicationException class*:

::

  using System;

  public class EmployeeListNotFoundException : ApplicationException
  {
      public EmployeeListNotFoundException()
      {
      }

      public EmployeeListNotFoundException(string message)
          :   base(message)
      {
      }

      public EmployeeListNotFoundException(string message, Exception inner)
          :   base(message, inner)
      {
      }
  }


.. _`Best Practices for Handling Exceptions`: http://msdn.microsoft.com/library/default.asp?url=/library/en-us/cpguide/html/cpconbestpracticesforhandlingexceptions.asp
.. _`Using User-Defined Exceptions`: http://msdn.microsoft.com/library/default.asp?url=/library/en-us/cpguide/html/cpconusinguser-definedexceptions.asp
.. _`What Happens When My Application Throws An Unhandled Exception`: http://blogs.msdn.com/shawnfa/archive/2004/07/15/184490.aspx

