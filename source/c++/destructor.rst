Destructor
**********

.. highlight:: c++

Virtual
=======

- `C++ Virtual destructors`_

Classes should always have a virtual destructor:

::

  class Base
  {
  public:
      Base() {
          cout << "Constructor: Base" << endl;
      }

      virtual ~Base() {
          cout << "Destructor : Base" << endl;
      }
  };

If not, the destructor of the derived class is not called at all.  This is
where the virtual mechanism comes into our rescue.  By making the Base class
destructor virtual, both the destructors will be called in order.


.. _`C++ Virtual destructors`: http://www.codersource.net/cpp_virtual_destructors.html
