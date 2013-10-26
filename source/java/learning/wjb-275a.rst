WJB-275A: Java programming Language
***********************************

The Java Runtime Environment
============================

- Class loader: Maintains classes loaded from the local file system in a
  separate namespace.  For duplicate classes it will prefer files from the
  local file system to prevent spoofing.
- Class loader -> Bytecode verifier: Checks to make sure the byte code conforms
  to the specification and does not violate system integrity.
- Class loader -> Bytecode verifier -* Interpreter: Reads the byte code and
  issues commands to the operating system.
- Class loader -> Bytecode verifier -* JIT Compiler: Compiles the bytecode into
  native format so it does not have to be interpreted every time it is used.

The ``main`` method is the entry point into our application.

::

  public static void main(String[] args)

  To compile our application use ``javac``, the Java compiler.  The compiler will
  automatically build dependencies e.g. if ``TestGreeting.java`` depends on
  ``Greeting.java``, the compiler will build them both with this command:

::

  javac TestGreeting.java

To run the application:

::

  java TestGreeting

Note: We do not append ``.class`` to the application name.

The ``-d`` option specifies the output folder (where we want our classes to be
output):

::

  javac -d ../classes shipping/domain/*.java

To create a ``jar`` file:

- Create a text file containing the name of your main class (in this example
  the file is called ``tempfile`` and contains the following:

  ::

    Main-Class: mypackage.MyMainClass

- Create the ``jar`` file:

  ::

    jar cmf tempfile MyProgram.jar

- To run the ``jar`` file:

  ::

    java -jar /path/to/file/MyProgram.jar

Object-Oriented Programming
===========================

Abstraction: Hiding the details of how something gets done.

Analysis: describes what the system needs to do.

Design: describes how the system does it.

Frameworks and APIs: Groups of objects that support a complex activity.

Encapsulation: Data hiding.  ``private`` attributes, ``public`` access
methods.

Inheritance:

Polymorphism:

Class:

- Class names: should contain whole words; avoid acronyms and abbreviations.
- Class *attributes*.

  - Also known as a data member, an instance variable or a data field.
  - If we don't declare an initial value a default value will be assigned.

- Class *methods*:

  - Also know as a function or procedure.

- Constructors:

  - Cannot return a value.
  - If you do specify the ``void`` keyword the constructor will become a
    method!
  - If you do not add a constructor to the class, the compiler will create a
    one which does nothing.  If you do add a constructor, the compiler will not
    create one.

UML:

- ``+`` is ``public``
- ``-`` is ``private``

Packages: Group logically related classes.

``import``: Just allows access to other classes (tells the compiler where to
find classes).  Does not cause the compiler to load anything additional into
memory, or affect the class file.

WJ-2752A: Understanding the Building Blocks of Java(TM) Technology
==================================================================

Comments
--------

::

  /**
   * This is a documentation (JavaDoc) comment.
   */

In Java, code is grouped into *blocks*.  The left and right curly braces mark
the begin and end of the block:

::

  {
    int x;
  }

Identifiers (Names)
-------------------

- Must start with either:

  - An uppercase letter.
  - A lowercase letter.
  - An underscore.
  - a dollar sign...

- After the initial character you may also use numbers (in addition to the
  aforementioned characters).
- Java keywords may not be used.
- Begin each name with a lower case letter.
- Subsequent words within the name should be capitalized e.g. firstName.

Data Types
----------

- ``int`` Literal ``077`` = Octal, ``OxBAAC`` = Hex.
- ``char`` 16-bit Unicode.
- ``float`` Literal ``3.0f``
- ``double`` Literal ``3.0`` (without the ``f``).
- ``boolean`` Must assign ``true`` or ``false`` (must not assign ``1`` or
  ``0``).
- ``String`` is not a primitive, it is an object.

Reference and Primitive Types
-----------------------------

- Reference types... a reference to an object.  The object is created in heap
  memory, the address of the object is stored in the reference variable (in
  stack memory).  References can be copied around.  You can have more than one
  reference to a particular object.
- Primitive types store the actual value in memory (not a reference).
- In Java, all objects are **passed by value** (a copy is made of the
  variable), whether it is a primitive or an object reference.
- You can use the same name for an argument (or local variable) as an instance
  variable.  Instance variables are identified by prepending ``this`` to the
  variable.  The local variable or argument will take precedence unless the
  instance variable is prepended with ``this``:

  ::

    private int day = 1;
    public MyClass(int day) {
        this.day = day;
    }

Conventions
-----------

- Packages: nouns in lower cases e.g. ``package shipping.objects``.
- Classes and Interfaces: nouns in mixed case with the first letter of each
  word capitalised e.g. ``class AccountBook``.
- Method names: verbs, in mixed case, with the first letter in lower case.
  Capital letter separate words.  Limit the use of underscores.
- Variables: Mixed case, lower case first letter, words separated by capital
  letters.  Limit the use of underscores.  Avoid using the dollar sign (it has
  a special meaning to inner classes).  e.g. ``currentCustomer``.  Avoid single
  character names except for temporary throwaway variables (loop control).
- Constants: Primitive constants should be all upper case with the words
  separated by underscores.  Object constants can use mixed case letters. e.g.
  ``HEAD_COUNT``.
- Braces: Use braces around all statements, even single line statements.
- Spacing: Place only a single statement on any line.
- Indentation:  Use two or four-space indentations to make your code readable.
- Comments:  Use comments to explain code segments that are not obvious.

Variable Initialisation
-----------------------

Local variables do not get a default value.  If they are not initialised we
will get a compile error.

Instance and class variables (``static``) get initialised to:

- ``0`` for numeric types
- ``false`` for the boolean type
- ``\\u0000`` for the ``char`` type
- ``null`` for object reference values (the variable points to nothing).

Operators
---------

String concatenation:

- One argument must be a ``String`` object.
- String objects are immutable.  Once they are created they can never be
  changed.

Casting
-------

- Promotion (automatic casting).

  Varibles are promoted automatically to a longer form e.g. Assigning an ``int``
  to a ``long``.

- Casting (manual casting)

  Override the compiler warning of *loss of precision*.

Branching Statements
--------------------

``switch``

- Can only be used with the ``byte``, ``short``, ``char`` and ``int`` data
  types.
- The ``break`` statement stops the program from falling through to the next
  ``case`` statement.
- ``default`` if none of the ``*case`` values match.

``for``

- Expressions

  ::

    for (<init_expr>; <test_expr>; <alter_expr>)

  ``alter_expr`` the *alteration expression*.  It will be evaluated at the end
  of the loop.

  **while** and **do/while**:

  ::

    while (<test_expr>)

  If the test expression evaluates to ``true``.

  **Special Loop Flow Control**:

- ``break``, force us to leave the loop immediately.
- ``continue``, leaves the loop body and jumps straight to the test expression.
- ``break labels``, if you want to break out of nested loops, label the outer
  loop and issue the ``break labels`` statement.  The code will jump straight
  to the test expression of the outer loop:

  ::

    outer:
        do {
            statement1;
            do {
                statement2;
                if (condition) {
                    break outer;
                }
                statement2;
            while (test_expr);
            statement2;
        while (test_expr);

- ``continue labels`` does the same as ``break labels``, but continues rather
  than breaking.

Arrays
------

To *declare* an array (both forms are fine):

::

  type [] array_identifier
  type array_identifier []

*Creating* arrays:

::

  array_identifier = new type[length];

*Initializing Arrays*:

::

  array_identifier[index] = value;

or:

::

  type [] array_identifier = {comma-separated-list};
  type array_identifier [] = {comma-separated-list};

Multidimensional Arrays
-----------------------

*Declaring* multidimensional arrays:

::

  type [][] array_identifier
  type array_identifier [][]

*Creating* multidimensional arrays:

::

  array_identifier = new type[number_of_arrays] [length]

Note: Java multidimensional arrays are not the standard implementation, we
specify the *number of arrays*.  We create several one dimensional arrays
rather than a true multidimensional array.

Array *attributes*:

::

  int i = myArray.length;

Enhanced for loop (Java 1.5 and later):

::

  for(int value : myArray)
     System.out.println(value);

*Resize array*:

In Java, arrays cannot be resized.  You can however reuse the array reference
variable.  We can use the ``System.arraycopy`` method to copy arrays.

Class Design
============

Single Inheritance
------------------

``extends``

*is a* e.g.

::

  ../../../images/howto/uml/inheritance-sun.gif

- Manager *is an* Employee
- Director *is a* Manager *is an* Employee
- General (or abstract) classes appear at the bottom of the tree.

Access Control
--------------

=============  ==============  ==============  ===========  ===========
*Modifier*     *Same Class*    *Same Package*  *Subclass*   *Universe*
=============  ==============  ==============  ===========  ===========
``private``    *Yes*           *No*            *No*         *No*
*default*      *Yes*           *Yes*           *No*         *No*
``protected``  *Yes*           *Yes*           *Yes*        *No*
``public``     *Yes*           *Yes*           *Yes*        *Yes*
=============  ==============  ==============  ===========  ===========

Overriding Methods
------------------

A subclass method may invoke a superclass method using the ``super`` keyword.

- ``super`` is used to refer to data attributes and methods.
- Behaviour invoked does not have to be in the superclass; it can be further up
  in the hierarchy.

::

  public String getDetails() {
     return super.getDetails()
         + "\nDepartment:" + department;

Polymorphism
------------

"*many forms*"...

*Collections*

===============  ===================================================
*homogeneous*    collections of objects with the same class type.
*heterogeneous*  collections of objects with different class types.
===============  ===================================================

*Polymorphic Arguments*...

``instanceof``
--------------

Casting
-------

::

  ../../../images/howto/java/learning/instanceof.gif

- Casts *upward* in the hierarchy are done implicitly.
- *Downward* casts must be to a subclass and are checked by the compiler.

Variable Arguments
------------------

Java 1.5 or later...

::

  average(1, 2);
  average(1, 2, 3);

      public int average(int ... nums) {
          int sum = 0;
          for (int x : nums) {
              sum += x;
          }
          return sum;
      }

Overloading Constructors
------------------------

- ...a constructor can call another constructor using the ``this`` call (the
  ``this`` call must be the first line of the constructor):

  ::

        public Employee(String name) {
            this(name, BASE_SALARY);
        }

        public Employee(String name, double salary) {
            System.out.println("Name [" + name + "] Salary [" + salary + "]");
        }

- Constructors are not inherited.
- When one class ``extends`` from another class, a constructor from each level
  of the class hierarchy must be called.  The ``super`` command must be used to
  tell the compiler which constructor to call at the level above us
  (the ``super`` call must be the first line of the constructor).
- If the superclass constructor is not invoked explicitly, Java will insert a
  call to ``super()``, the superclass's no-args constructor.
- The constructors in a class hierarchy are called from the top, down.  This is
  because classes further down the hierarchy might want to use some of the data
  which has been initialised in the super class.

The Object class.
-----------------

- A class declaration with no ``extends`` clause implies ``extends Object``.
- If two objects are equal they must return the same hash code (but this does
  not mean that two equal objects will return the same hash code).

*Wrapper Classes*

- The primitive data types are not objects - but each data type has an
  associated wrapper class e.g. the ``int`` data type has ``Integer`` wrapper
  class).
- Storing the primitive object in the wrapper class is called "*boxing*".
- To get the primitive data type out of the wrapper object, call the associated
  method, e.g.

  ::

    Integer age = new Integer(43); // boxing
    int i = age.intValue();        // unboxing

- Java 1.5 and later can perform autoboxing and autounboxing:

  ::

    Integer age = 43; // autoboxing
    int i = age;      // autounboxing

- To convert a ``String`` to a primitive object:

  ::

    int i = Integer.parseInt("43");

- To convert a ``String`` to the associated wrapper object:

  ::

    Integer i = Integer.valueOf("43");

Advanced Class Features
=======================

The ``static`` keyword.
-----------------------

- Is an *attribute* or *method* shared among all instances of that class.
- static initialisation blocks.  Is called when the class is first loaded into
  memory:

  ::

    public static int counter;
    static {
       counter = 43;
    }

The ``final`` modifier.
-----------------------

- If applied to a *class*, you may not ``extend`` the class.
- If applied to a *method* declaration, you may not ``override`` that method in
  a subclass.
- If applied to a *variable*:

  - A final variable is a constant (and cannot be changed).
  - If applied to a class attribute, the assignment can occur independently of
    the declaration.  A "*blank final*" instance attribute must be set in every
    constructor.

    ::

      private final long customerId = 23;

    or:

    ::

      private final long customerId;

      public Customer() {
          customerID = createId();
      }

  - A "*blank final*" method variable must be set in the method body before
    being used.

Enumerated Types
----------------

Java 1.5 and above:

::

  public enum Colour {
    RED,
    BLUE
  }

- An ``enum`` can be thought of as *like a* class type.
- ``enum``'s can have constructors, attributes and methods:

  ::

    public enum Colour {
        RED("Red"),
        GREEN("Green");
        private final String description;
        private Colour(String description) {
            this.description = description;
        }
        public String getDescription() {
            return description;
        }
    }

    public static void main(String[] args) {
        // Will print "RED Red":
        System.out.print(Colour.RED + " " + Colour.RED.getDescription());
    }

Static Imports
--------------

Java 1.5 and above:

Imports static members from classes, allowing them to be used without class
qualification:

::

  import static com.sample.Colour.RED;
  System.out.print(RED + " " + RED.getDescription());

Abstract Classes
----------------

- Only subclasses of ``abstract`` classes can be created.
- Do not provide an implementation (or body) for abstract methods.
- Subclasses *must* provide implementations of ``abstract`` methods before they
  can be created.

Interfaces
----------

- A class can ``extend`` another class and implement an interface at the same
  time.

Exceptions
==========

- Exception Categories:

=========  ====================  ============================================================================
**Type**   **Represented by**    **Note**
=========  ====================  ============================================================================
Checked    ``Exception``         Conditions that readily occur e.g. File not found.
UnChecked  ``RuntimeException``  Probable bugs
UnChecked  ``Error``             Fatal - Typically the program will exit.  "*Nothing we can do about them*".
=========  ====================  ============================================================================

Exception Categories

::

  ../../../images/howto/java/learning/exception-hierarchy.gif

- "*handle or declare rule*", either handle the exception using a ``try``,
  ``catch`` block or declare that you throw that type of error (using the
  ``throws`` statement).
- When you override a method, you can throw the same exception, a subclass of
  the original exception or *no* exception.
- To create your own exception class, extend the ``Exception`` class (or one of
  it's subclasses) (checked), or the ``RuntimeException`` class (unchecked).

Assertions
==========

- Use assertions to document and verify the assumptions and internal logic of a
  single method.
- Do not use assertions to check the parameters of a public method.
- Only turned on during development.
- Sample code:

  ::

    assert(x == 0);
    assert false : "Unknown colour";

- If assertion checking is disabled (the default), the code runs as fast as if
  the check was never there.
- To enable assertions:

  ::

    java --enableassertions MyProgram
    java -ea MyProgram

- Assertion checking can be controlled on a class, package or package hierarchy
  basis.

Text Based Applications
=======================

System Properties
-----------------

- System properties are a feature that replaces the concept of *environment
  variables* (which are platform specific).
- The ``System.getProperties`` method returns a ``Properties`` object.
- The ``System.getProperty`` method returns a ``String`` representing the
  value of the named property.
- Use the ``-D`` option to include a new property.
- Sample code:

  ::

    import java.util.Properties;
    import java.util.Enumeration;

    public class TestProperties {
        public static void main(String[] args) {
            Properties props = System.getProperties();
            Enumeration propNames = props.propertyNames();
            while (propNames.hasMoreElements()) {
                String propName = (String) propNames.nextElement();
                String property = props.getProperty(propName);
                System.out.println("property " + propName + " is " + property);
            }
        }
    }

Console I/O
-----------

==============  ==========  ===============  ====================
**Variable**    **Action**  **I/O**          **Object of type**
==============  ==========  ===============  ====================
``System.out``  writes to   Standard output  ``PrintStream``
``System.in``   reads from  Standard input   ``InputStream``
``System.err``  writes to   Standard error   ``PrintStream``
==============  ==========  ===============  ====================

- The ``InputStreamReader`` reads in characters one by one and converts them to
  *unicode* characters.
- To read a line at a time, we wrap the ``InputStreamReader`` in a
  ``BufferedReader`` object.

  ::

    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

- Java 1.5 has added the ``System.out.printf`` method (also available in the
  ``String.format`` method (``%n`` is the newline character):

  ::

    System.out.printf("%s is %d years old.%n", "Peter", 43);
    String s = String.format("%s is %3d years old.", "Martin", 16);

- The ``Scanner`` API provides a formatted input function:

  ::

    java.util.Scanner s = new java.util.Scanner(System.in);
    String param = s.next();
    int value = s.nextInt();
    s.close();

- The ``Scanner`` API can be used with console input streams as well as file or
  network streams.

Files and File I/O
------------------

- The ``FileReader`` object reads characters, the ``BufferedReader`` object can
  read one line at a time (see ``InputStreamReader`` above):

  ::

    BufferedReader in = new BufferedReader(new FileReader(file));

- The ``FileWriter`` object will write one character at a time, we wrap this
  object in a ``PrintWriter`` object which will allow us to use the ``print``
  and ``println`` methods to write one line at a time:

  ::

    PrintWriter out = new PrintWriter(new FileWriter(file));

The Collections API
-------------------

========  =========  ==================  ===============================
``Set``   unordered  no duplicates       ``HashSet``
``List``  ordered    duplicates allowed  ``ArrayList``, ``LinkedList``
========  =========  ==================  ===============================

Generics
--------

- If we want the compiler to show us where we should be using generics:

  ::

    javac -Xlint:unchecked MyProgram.java

- The ``ListIterator`` interface of a ``List`` allows us to iterate backwards
  (using the ``hasPrevious`` and ``previous`` methods) as well as forward.

- Java 1.5 and above has an enhanced for loop:

  ::

    public void deleteAll(Collection<NameList> c) {
        for (NameList nl : c) {
            nl.deleteItem();
        }

  ...the enhanced for loop can also be used with arrays:

  ::

    public int sum(int[] array) {
        int result = 0;
        for (int element : array) {
            result += element;
        }

Building Java GUIs
==================

AWT
---

- Is a first generation GUI API and is later followed by *Swing* (which has
  some similarities).
- Every GUI component that is displayed on the screen is a subclass of the
  abstract class ``Component`` or ``MenuComponent``.
- Normally use a ``Frame`` (a subclass of Window) rather than a window because
  it includes a title bar, menu bar and minimise/maximise buttons.
- Normally add components to a ``Panel`` before adding them to a ``Frame``.
- Layout managers are used by default.  The default layout manager is the
  ``BorderLayout``:

+---------------------+-----------------------------------------------------------------------------+
| ``FlowLayout``      | Horizontal.                                                                 |
|                     | Default layout for the ``Panel`` class.                                     |
|                     | Alignment default is centred.                                               |
|                     | Uses components preferred sizes.                                            |
+---------------------+-----------------------------------------------------------------------------+
| ``BorderLayout``    | Default layout manager for the ``Frame`` class (windows and dialogs).       |
|                     | Lays out components in 5 regions, North, South, East, West and Centre.      |
|                     | North, South and Centre regions adjust horizontally.                        |
|                     | East, West and Centre regions adjust vertically.                            |
|                     | Normally add a ``Panel`` (with it's own layout manager) to each region.     |
+---------------------+-----------------------------------------------------------------------------+
| ``GridLayout``      | Rows and Columns.                                                           |
|                     | Components are added from left to right and from top to bottom.             |
|                     | The constructor specifies the number of rows and columns.                   |
|                     | All regions are sized equally.                                              |
+---------------------+-----------------------------------------------------------------------------+
| ``CardLayout``      | Like a deck of cards - only one card visible at a time.                     |
|                     | Use to simulate a tabbed dialog.                                            |
+---------------------+-----------------------------------------------------------------------------+
| ``GridBagLayout``   | Similar to a ``GridLayout``, but rows and columns can be different sizes.   |
+---------------------+-----------------------------------------------------------------------------+

- Drawing

  - The paint method is called every time the component is shown.
  - Is typically performed by using a Graphics object associated with a
    component.
  - Can be performed using the Panel and Canvas classes, although it is
    possible to draw in any component.

AWT - GUI Event Handling
------------------------

- Event sources - the generator of an event.
- Event handlers register with components.
- To handle *action* events, a handler must implement the ``ActionListener``
  interface.  Other listener interfaces include ``MouseListener``,
  ``MouseMotionListener`` and ``WindowListener``.
- Each listener interface which has more than one method to implement has an
  associated ``abstract`` ``Adapter`` class.  This ``abstract`` class provides
  empty implementations of every method defined on the interface.  If we
  ``extend`` the ``Adapter`` class we only have to define the methods we are
  interested in.
- Event handlers can be defined:

  - in a standalone handler class.
  - as part of the class which creates the frame windows and sets up your
    GUI.
  - in an *inner class*.  An inner class has access to the ``private``
    data members of the outer class.
  - in an *anonymous inner class*.  Typically used when the code in an event
    handler is very short.

- Sample Code

  ::

    ../../../misc/howto/java/learning/ChatClient.java.txt

AWT - Components
----------------

- AWT components will have a look and feel which is consistent with the
  operating system they are running on.
- The Swing API (J.F.C) has a distinctive look and feel which can be consistent
  across platforms.  It builds on top of AWT but supplants the operating system
  components with lightweight versions.

Threads
=======

Threads
-------

- Create a class which implements the ``Runnable`` interface.  The ``run``
  method is very similar to the ``main`` method in a single threaded application.

  ::

    public class HelloRunner implements Runnable {
        int i;
        public void run() {
            i = 0;
            while (i < 5) {
                System.out.println("Thread loop " + i++);
            }
        }
    }

    public class ThreadTester {
        public static void main(String[] args) {
            HelloRunner r = new HelloRunner();
            Thread t = new Thread(r);
            t.start();
            int i = 0;
            while (i < 5) {
                System.out.println("Main loop " + i++);
            }
        }
    }

- Thread Scheduling:

  Thread Scheduling

  ::

    ../../../images/howto/java/learning/thread-scheduling.gif

- Terminating a Thread:

  ::

    public class Runner implements Runnable {
        private boolean timeToQuit = false;
        public void run() {
            while (!timeToQuit) {
                // Do some work...
            }
        }
        public void stopRunning() {
            timeToQuit = true;
        }
    }

    public class ThreadController {
        private Runner r = new Runner();
        private Thread t = new Thread();
        public void startThread() {
            t.start();
        }
        public void stopThread() {
            r.stopRunning();
        }
    }

    public class ThreadMain {
        public static void main(String[] args) {
            ThreadController tc = new ThreadController();
            tc.startThread();
            // Do some other stuff...
            tc.stopThread();
        }
    }

- Basic Control of Threads:

  ::

    public class ThreadInfo {
        public static void main(String[] args) {
            Thread mt = Thread.currentThread();
            if (mt.isAlive()) {
                String name = mt.getName();
                int priority = mt.getPriority();
                System.out.println("Name: " + name);
                System.out.println("Priority: " + priority);
                mt.setName("New Name");
                mt.setPriority(Thread.MAX_PRIORITY);
            }
        }
    }

- Putting Threads on Hold

  - ``sleep``

    To move a thread from *running* into a *blocked* state, use the ``sleep``
    method:

    ::

      try {
          Thread.sleep(10);
      } catch (InterruptedException e) {

  - ``join``

    The ``join`` method will block until the specified thread completes:

    ::

      public static void main(String[] args) {
          Thread t = new Thread(new Runner());
          t.start();
          // Do stuff in parallel with the other thread for a while.
          try {
              // Wait here for the timer thread to finish.
              t.join();
          } catch (InterruptedException e) {
              // t came back early.
          }
          // Now continue in this thread.
      }

  - ``yield``

    *I have more work to do... but if someone else would like to use the CPU
    time*...  The thread moves to the *runnable* state and allows other threads
    to move to the *running* state.

    ::

      public class Yield implements Runnable {
          boolean timeToQuit = false;
          public void run() {
              while (!timeToQuit) {
                  // do some stuff...
                  Thread.yield();
              }
          }
      }

- Other Ways to Create Threads

  We can inherit directly from the ``Thread`` class and override the ``run``
  method:

  ::

    public class MyThread extends Thread {
        public void run() {
            while (true) {
                // do lots of stuff...
                try {
                    Thread.sleep(100);
                } catch (InterruptedException e) {
                    // sleep interrupted.
                }
            }
        }
        public static void main(String args[]) {
            Thread t = new MyThread();
            t.start();
        }
    }

  **Note**: This is simpler to implement but may not always be the best choice:

====================================  =========================
**Implement** ``Runnable``            **Extend** ``Thread``
====================================  =========================
Better object-oriented design.
Your class can extend another class.
Consistency?
                                      Simple code.
====================================  =========================

Using the ``synchronized`` keyword
----------------------------------

- The object lock flag

  Every object has a lock, called the "*lock flag*".  The parameter to the
  ``synchronized`` method is the object which we want to lock:

  ::

    public class MyStack {
        int idx = 0;
        char[] data = new char[6];
        public void push(char c) {
            synchronized (this) {
                data[idx] = c;
                idx++;
            }
        }
        public char pop() {
            synchronized (this) {
                idx--;
                return data[idx];
            }
        }
    }

  **Note**:

  - Mark all delicate data ``private``.
  - All access to the data through ``synchronized`` blocks.
  - You may also ``synchronized`` an entire method.
  - Do not overdo the use of ``synchronized``.  Only use it where it is needed.

Thread States
-------------

- The ``synchronized`` state:

  Thread States

  ::

    ../../../images/howto/java/learning/thread-states.gif

- Thread Interaction

  Thread States - wait

  ::

    ../../../images/howto/java/learning/thread-states-wait.gif

  - The ``notify`` method will wake up waiting threads.
  - When our thread calls the ``wait`` method:

    - it gives up it's lock.
    - it will block and wait until another thread calls the ``notify``
      method.
    - When notified, it will re-acquire the lock and continue.

  - To use ``wait`` and ``notify`` you must be in a ``synchronized`` block:

    ::

      public synchronized char pop() {
          char c;
          while (buffer.size() == 0) {
              try {
                  this.wait();
              } catch (InterruptedException e) {
              }
          }
          c = buffer.remove(buffer.size() - 1);
          return c;
      }
      public synchronized void push(char c) {
          this.notify();
          buffer.add(c);
      }

Advanced I/O Streams
====================

- "*stream*": flow of data "from a source" (input) or "to a sink" (output):

==============  =================  =======================
**Stream**      **Byte Streams**   **Character Streams**
==============  =================  =======================
Source streams  ``InputStream``    ``Reader``
Sink streams    ``OuputStream``    ``Writer``
==============  =================  =======================

- Sources and sinks are both "*node streams*".
- Types of "*node streams*" are files, memory and pipes between threads or
  processes:

+---------------+-----------------------+------------------------------+
| **Type**      | **Character Streams** | **Byte Streams**             |
+---------------+-----------------------+------------------------------+
| File          | ``FileReader``        | ``FileInputStream``          |
|               | ``FileWriter``        | ``FileOutputStream``         |
+---------------+-----------------------+------------------------------+
| Memory array  | ``CharArrayReader``   | ``ByteArrayInputStream``     |
|               | ``CharArrayWriter``   | ``ByteArrayOutputStream``    |
+---------------+-----------------------+------------------------------+
| Memory string | ``StringReader``      | *N/A*                        |
|               | ``StringWriter``      | *N/A*                        |
+---------------+-----------------------+------------------------------+
| Pipe          | ``PipedReader``       | ``PipedInputStream``         |
|               | ``PipedWriter``       | ``PipedOutputStream``        |
+---------------+-----------------------+------------------------------+

Note: If a class has ``Reader`` or ``Writer`` in it's name, then we are reading
or writing textual data.  If the class has ``Stream`` in it's name, then we are
reading or writing binary data.

- I/O Stream Chaining

  ::

    ../../../images/howto/java/learning/io-stream-chaining.gif

  Here are some classes which can be used for *stream chaining*:

  ::

    ../../../images/howto/java/learning/stream-chaining-options.gif

Networking
==========

- The two ends of a conversation are called sockets.
- Sockets hold two streams, an input stream and an output stream.
- To set-up a network connection, you need the network address (e.g.
  ``server.foo.com``) and port number (from 0 to 65535).  Use a port number
  above 1024.

  Java Networking Model

  ::

    ../../../images/howto/java/learning/networking-model.gif

