Constructors
************

Static Constructors
===================

A static constructor is called automatically to initialize the class before the
first instance is created or any static members are referenced.

The time of execution cannot be determined, but it is definitely before the
first object creation.

The syntax of writing the static constructors is also very simple:

::

  public class myClass
  {
      static myClass()
      {
          // Initialization code goes here.
          // Can only access static members here.
      }
  }

Note:

- There can be only one static constructor in the class.
- The static constructor should be without parameters.
- It can only access the static members of the class.
- There should be no access modifier in static constructor definition.

