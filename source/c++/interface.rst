Interface
*********

.. highlight:: c++

Simple example of an interface class:

::

  class MyInterface
  {
  public:
      MyInterface(){;}
      virtual ~MyInterface(){;}

      virtual std::string AFunction(long const & location) = 0;
      virtual std::string AnotherFunction() = 0;
  };

To use this interface:

::

  class MyClass : public MyInterface
