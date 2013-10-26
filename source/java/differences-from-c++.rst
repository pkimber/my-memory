Differences between C++ and Java
********************************

http://www.javacoffeebreak.com/articles/thinkinginjava/comparingc++andjava.html

Class definitions are roughly the same form in Java as in C++,
but there's no closing semicolon.

Static quoted strings are automatically converted into String
objects.  There is no independent static character array string like
there is in C and C++.

All objects of non-primitive types can be created only via new.
There's no equivalent to creating non-primitive objects "on the stack"
as in C++. All primitive types can be created only on the stack, without
new.

No forward declarations are necessary in Java. If you want to use a
class or a method before it is defined, you simply use it the compiler
ensures that the appropriate definition exists. Thus you don't have
any of the forward referencing issues that you do in C++.

Object handles defined as class members are automatically initialized
to null. Initialization of primitive class data members is guaranteed
in Java; if you don't explicitly initialize them they get a default
value (a zero or equivalent).

There are no destructors in Java. There is no "scope" of a variable
per se, to indicate when the object's lifetime is ended the lifetime
of an object is determined instead by the garbage collector.
There is a finalize( ) method that's a member of each class, something
like a C++ destructor, but finalize( )  is called by the garbage
collector and is supposed to be responsible only for releasing
"resources" (such as open files, sockets, ports, URLs, etc).
If you need something done at a specific point, you must create a
special method and call it, not rely upon finalize( ). Put another way,
all objects in C++ will be (or rather, should be) destroyed, but not
all objects in Java are garbage collected. Because Java doesn't support
destructors, you must be careful to create a cleanup method if it's
necessary and to explicitly call all the cleanup methods for the base
class and member objects in your class.

Java has built-in multithreading support. There's a Thread  class
that you inherit to create a new thread (you override the run( )  method).
Mutual exclusion occurs at the level of objects using the synchronized
keyword as a type qualifier for methods. Only one thread may use a
synchronized  method of a particular object at any one time.
Put another way, when a synchronized method is entered, it first "locks"
the object against any other synchronized method using that object and
"unlocks" the object only upon exiting the method. There are no explicit
locks; they happen automatically. You're still responsible for
implementing more sophisticated synchronization between threads by
creating your own "monitor" class. Recursive synchronized methods work
correctly. Time slicing is not guaranteed between equal priority threads.

Instead of controlling blocks of declarations like C++ does, the access
specifiers (public, private, and protected) are placed on each definition
for each member of a class. Without an explicit access specifier, an
element defaults to "friendly," which means that it is accessible to
other elements in the same package (equivalent to them all being C++
friends) but inaccessible outside the package. The class, and each
method within the class, has an access specifier to determine whether
it's visible outside the file. Sometimes the private keyword is used
less in Java because "friendly" access is often more useful than
excluding access from other classes in the same package. (However, with
multithreading the proper use of private is essential.) The Java
protected keyword means "accessible to inheritors and to others in
this package." There is no equivalent to the C++ protected keyword
that means "accessible to inheritors only" (private protected used
to do this, but the use of that keyword pair was removed).

Inheritance in Java has the same effect as in C++, but the syntax is
different. Java uses the extends keyword to indicate inheritance from a
base class and the super keyword to specify methods to be called in the
base class that have the same name as the method you're in. (However,
the super keyword in Java allows you to access methods only in the
parent class, one level up in the hierarchy.) Base-class scoping in
C++ allows you to access methods that are deeper in the hierarchy).
The base-class constructor is also called using the super keyword.

Java provides the interface keyword, which creates the equivalent of
an abstract base class filled with abstract methods and with no data
members. This makes a clear distinction between something designed to
be just an interface and an extension of existing functionality via
the extends keyword. It's worth noting that the abstract keyword produces
a similar effect in that you can't create an object of that class.
An abstract class may contain abstract methods (although it isn't required
to contain any), but it is also able to contain implementations, so it
is restricted to single inheritance. Together with interfaces, this
scheme prevents the need for some mechanism like virtual base classes in C++.
To create a version of the interface that can be instantiated, use the
implements keyword, whose syntax looks like inheritance:

::

  public interface Face {
     public void smile();
  }

  public class Baz extends Bar implements Face {
     public void smile( ) {
        System.out.println("a warm smile");
     }
  }

Exception handling in Java is different because there are no destructors.
A finally clause can be added to force execution of statements that
perform necessary cleanup. All exceptions in Java are inherited from
the base class Throwable, so you're guaranteed a common interface.

::

  public void f(Obj b) throws IOException {
     myresource mr = b.createResource();
     try {
        mr.UseResource();

     } catch (MyException e) {
        // handle my exception
     } catch (Throwable e) {
        // handle all other exceptions
     } finally {
        mr.dispose(); // special cleanup
     }
  }

The const issues in C++ are avoided in Java by convention. You pass
only handles to objects and local copies are never made for you
automatically. If you want the equivalent of C++'s pass-by-value,
you call clone( ) to produce a local copy of the argument (although
the clone( ) mechanism is somewhat poorly designed see Chapter 12).
There's no copy-constructor that's automatically called.


Bruce Eckel, Thinking in Java, Chapter 3, "Controlling Program Flow"
What if you want to compare the actual contents of your own classes.
The default behaviour of equals() is to compare references.  So unless
you override equals() in your new class you won't get the desired
behaviour.

