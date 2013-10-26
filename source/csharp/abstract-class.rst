Abstract Class
**************

Sample
======

::

  abstract class absClass1
  {
      public abstract int AddTwoNumbers(int Num1, int Num2);
      public abstract int MultiplyTwoNumbers(int Num1, int Num2);
  }

  abstract class absClass2 : absClass1
  {
      public override int AddTwoNumbers(int Num1, int Num2)
      {
          return Num1+Num2;
      }
  }

  class absDerived : absClass2
  {
      public override int MultiplyTwoNumbers(int Num1, int Num2)
      {
          return Num1*Num2;
      }
  }

Note:

- You need to use the ``override`` keyword when you override a method.

