Classes
*******

.. highlight:: java

Controlling Access to Members of a Class
========================================

http://java.sun.com/docs/books/tutorial/java/javaOO/accesscontrol.html

The following table shows the access to members permitted by each modifier:

**Access Levels**:

===============  =========  ===========  ============  =========
**Modifier**     **Class**  **Package**  **Subclass**  **World**
===============  =========  ===========  ============  =========
``public``       Y          Y            Y             Y
``protected``    Y          Y            Y             N
no modifier      Y          Y            N             N
``private``      Y          N            N             N
===============  =========  ===========  ============  =========

If a class has no modifier (the default, also known as package-private), it is
visible only within its own package.

The ``protected`` modifier specifies that the member can only be accessed
within its own package (as with package-private) and, in addition, by a
subclass of its class in another package.

final
=====

See :doc:`keywords`.

Clone
=====

- See "*Copy constructor*" notes below.
- Probably worth considering this idea:
  `How to do a deep clone of an java object`_

Constructor
===========

Copy constructor
----------------

http://www.javapractices.com/Topic71.cjp

Java does have a clone method which can be implemented using the ``Cloneable``
interface, but this is *very tricky to implement correctly*.

http://www.javapractices.com/Topic12.cjp

Instead use a copy constructor (very similar to C++):

::

  public Galaxy (final double aMass, final String aName) {
      fMass = aMass;
      fName = aName;
  }

  /**
   * Copy constructor.
   */
  public Galaxy(final Galaxy aGalaxy) {
      this(aGalaxy.getMass(), aGalaxy.getName());
  }

Default Constructor
-------------------

This project shows when the compiler will generate a default constructor:
learn-constructor_

Empty
-----

To write an empty constructor (just lose the semi-colon):

::

  private TestIndexFiles() { }

Static Initialization Blocks
----------------------------

http://java.sun.com/docs/books/tutorial/java/javaOO/initial.html

::

  static {
      // whatever code is needed for initialization goes here
  }

A class can have any number of static initialization blocks, and they can
appear anywhere in the class body.  The runtime system guarantees that static
initialization blocks are called in the order that they appear in the source
code.

There is an alternative to static blocks - you can write a private static
method:

::

  class Whatever {
      public static varType myVar = initializeClassVariable();

      private static varType initializeClassVariable() {
          //initialization code goes here
      }
  }

The advantage of private static methods is that they can be reused later if you
need to reinitialize the class variable.

Constant
========

To create a constant:

::

  public static final int STARTUP_TIME = 3000;

Abstract Class
==============

::

  abstract class IAmAbstract {

      // This constructor has an argument.
      public IAmAbstract(String name);

      // This is an abstract method.  Must be over-ridden in derived class.
      abstract String getEndpoint();
  }

  class IAmReal extends IAmAbstract {

      // Call the base class constructor with the super keyword.
      public IAmReal(String name){
          super(name);
      }

      String getEndpoint() {
      }

See *Annotations*, *Override* below...

Inner Class
===========

If we declare an inner class with the ``static`` keyword e.g.
``public static class MyEditText``, it is ``static``, meaning it does not
generate the so-called "synthetic methods" that allow it to access data from
the parent class, which in turn means that it really behaves as a separate
class rather than something strongly related to it's parent.  This is a
cleaner way to create inner classes if they do not need access to state from
the outer class, keeps the generated class small, and allows it to be used
easily from other classes.

Interface
=========

::

  public interface IGatewayMessage {
  }

  class MyMessage implements IGatewayMessage {

See *Annotations*, *Override* below...

Annotations
===========

Java 1.5 and above...

Override
--------

The ``@Override`` annotation indicates that a method declaration is intended to
override a method declaration in a superclass.  If a method is annotated with
this annotation type but does not override a superclass method, compilers are
required to generate an error message:

::

  @Override
  protected void handleFile(final File file, final int depth...


.. _`How to do a deep clone of an java object`: http://java-polis.blogspot.com/2007/11/how-to-do-deep-clone-of-java-object.html
.. _learn-constructor: https://weezy/svn/learn/java/learn-constructor
