Interface
*********

Defining an interface:

::

  interface IMyInterface
  {
      void MethodToImplement();
  }

Using an interface:

::

  class InterfaceImplementer : IMyInterface
  {
      public void MethodToImplement()
      {
          Console.WriteLine("MethodToImplement() called.");
      }
  }

