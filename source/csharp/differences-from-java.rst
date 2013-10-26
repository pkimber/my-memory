Differences from Java
*********************

These notes concentrate on writing C# applications in the same *style* as Java.
I will not investigate commands or syntax which is unique to C#.

Links
=====

- `The C# Programming Language for Java Developers`_
- `Sealed Classes And Methods In C#`_
- `Top Ten Traps in C# for C++ Programmers`_

class
=====

Constructors
------------

Constructor chaining.  To call another constructor in the same class...

Java:

::

  public ColorPoint()
  {
      this(Color.Blue)

C#:

::

  public ColorPoint()
      :   this(Color.Blue)
  {

Java uses the ``super`` keyword to call a specified constructor in the base
class.  In C# use the ``base`` keyword:

::

  public class ColorPoint : Point
  {
      private Color color;

      public ColorPoint(int x, int y) : base (x, y)
      {
          color = Color.Red;
      }
  }

To create a ``final`` class use the ``sealed`` keyword:

::

  using System;
  sealed class MyClass
  {
      public int x;
      public int y;
  }

In C# structs are implicitly sealed; therefore, they cannot be inherited.

Inheritance and Derived Classes
-------------------------------

In C# both inheritance and interface implementation are defined by the ``:``
operator.

Methods
-------

In C#, all parameters are passed by value by default. To pass by reference, we
need to specify one of the keywords ``ref`` or ``out``.

To sum up, use the ``ref`` keyword when you want a method to modify an existing
variable, and use the ``out`` keyword to return a value produced inside the
method.

Virtual Methods
---------------

A method that is to be overridden in a derived class is declared with the
``abstract`` or ``virtual`` modifier. In a derived class, the overridden method
is declared using the ``override`` modifier.

Constants
=========

::

  public const String BODY = "body";

Data Types
==========

For each primitive data type in Java, the core class library provides a wrapper
class that represents it as a Java object. For example, the ``Integer`` class
wraps the ``int`` data type

All primitive data types in C# are objects in the ``System`` namespace. For
each data type, a short name, or alias, is provided. For instance, ``int`` is
the short name for ``System.Int32``.

Java's ``boolean`` is called ``bool`` in C#.

Exceptions
==========

There are two categories of exceptions that derive from the ``Exception`` base
class, ``System.SystemException`` and ``System.ApplicationException``. All
types in the ``System`` namespace derive from ``System.SystemException`` while
user-defined exceptions should derive from ``System.ApplicationException`` to
differentiate between runtime and application errors.

Note that C# does not support checked exceptions.

Equivalents
-----------

===============================  ==============================================
**Java**                         **C#**
===============================  ==============================================
ArrayIndexOutOfBoundsException   ArgumentOutOfRangeException
===============================  ==============================================

final
=====

C# uses the keywords ``const`` or ``readonly``.

import
======

Java:

::

  import <package hierarchy>.<class name>;

C#

::

  using <namespace hierarchy>.<class name>;

main
====

Note that in C#, we capitalize ``Main()`` while Java uses lowercase ``main()``.

``Main()`` can only return ``int`` or ``void``, and has an optional string
array argument to represent command line parameters:

::

  static int Main (string[] args)
  {
      ...
      return 0;
  }

package
=======

In Java:

::

  package <Package name>;

C#:

::

  namespace <Package name>
  {
      public class MyClass
      {
          ...
      }
  }

Output
======

Java:

::

  System.out.println("Hi);

C#:

::

  Console.Out.WriteLine("Hi.");
  Console.Error.WriteLine("An error.");

Properties
==========

::

  public class Animal
  {
      private string name;

      public string Species
      {
          get
          {
              return name;
          }
          set
          {
              name = value;
          }
      }
  }

If the getter or setter needs to be private, then probably need to revert to
*Java like* getters and setters...

static
======

- Replace ``private static final`` variables as follows:

  ::

    private const int WORD_COUNT_DEBUG = 10;

- Use the ``static`` modifier to declare a ``static`` member, which belongs to
  the type itself rather than to a specific object e.g:

  ::

    using System;
    public class Employee
    {
       public string id;
       public string name;

       public Employee ()
       {
       }

       public Employee (string name, string id)
       {
          this.name = name;
          this.id = id;
       }

       public static int employeeCounter;

       public static int AddEmployee()
       {
          return ++employeeCounter;
       }
    }

Strings
=======

To compare string values in Java, developers would need to call the
``equals()`` method on a string type as the ``==`` operator compares reference
types by default.

In C#, developers can use the ``==`` or ``!=`` operators to compare string
values directly.  Even though a string is a reference type in C#, the ``==``
and ``!=`` operator will, by default, compare the string values rather than
references.

Just like in Java, C# developers should not use the string type for
concatenating strings to avoid the overhead of creating new string classes
every time the string is concatenated.  Instead, developers can use the
``StringBuilder`` class in the ``System.Text`` namespace which is functionally
equivalent to the Java ``StringBuffer`` class.

String Literals
---------------

C# provides the ability to avoid the usage of escape sequences like ``"\t"``
for tab or ``"\"`` for backslash characters within string constants. To do
this, simply declare the verbatim string using the ``@`` symbol to precede the
assignment of the string value.  The examples below show how to use escape
characters and how to assign string literals:

::

  //Using escaped characters
  string path = "\\\\FileShare\\Directory\\file.txt";

  //Using String Literals
  string escapedPath = @"\\FileShare\Directory\file.txt";

struct
======

The important difference with a class is that structs are value types, while
classes are reference types.

`Java vs C# struct`_

switch
======

Java allows you to *fall through* a case and execute the next case unless you
use a ``break`` statement at the end of the case.  C# however requires the use
of either a ``break`` or a ``goto`` statement at the end of each case, and if
neither is present, the compiler produces an error.

Beware though, that where a case doesn't specify any code to execute when that
case is matched, control will fall through to the subsequent case.


.. _`The C# Programming Language for Java Developers`: http://msdn.microsoft.com/vstudio/java/gettingstarted/csharpforjava/
.. _`Sealed Classes And Methods In C#`: http://www.csharphelp.com/archives/archive158.html
.. _`Top Ten Traps in C# for C++ Programmers`: http://www.ondotnet.com/pub/a/dotnet/2002/02/11/csharp_traps.html
.. _`Java vs C# struct`: http://www.javacamp.org/javavscsharp/struct.html

