Threads
*******

Sample
======

- Sample code can be viewed in
  http://toybox/hg/sample/file/tip/java/sample-thread

Sleep
=====

http://java.sun.com/j2se/1.4.2/docs/api/java/lang/Thread.html

Causes the currently executing thread to sleep (temporarily cease execution)
for the specified number of milliseconds:

::

  Thread.sleep(30000);

Synchronize
===========

Synchronized Methods
--------------------

From http://today.java.net/pub/a/today/2004/08/02/sync1.html.

A synchronized method is a method that serves as a monitor entry.  That
method's signature is prefixed with keyword synchronized and the entire
method's code is a critical section (a section of code that can be executed by
only one thread at a time, to prevent data loss or corruption).

The code fragment below presents a class with two instance-based synchronized
methods and one class-based synchronized method:

::

  public class SyncMethods
  {
     public synchronized void instanceMethod1 ()
     {
        // Appropriate method-related code.
     }

     public synchronized void instanceMethod2 ()
     {
        // Appropriate method-related code.
     }

     public static synchronized void classMethod ()
     {
        // Appropriate method-related code.
     }
  }

A ``SyncMethods`` object reference is needed to invoke either of the two
synchronized instance methods. For example:

::

  SyncMethods sm = new SyncMethods ();
  sm.instanceMethod1 ();

The thread that executes ``sm.instanceMethod1()`` needs to acquire the lock
associated with the SyncMethods object that sm references before it can enter
that monitor entry.  If some other thread has that lock, because it is
executing code inside of ``instanceMethod1()`` or inside of
``instanceMethod2()``, the invoking thread is made to wait until the other
thread leaves its instance method.

Because the static ``classMethod()`` does not require an object reference prior
to its invocation, which lock does a thread acquire before it can enter that
method?  The answer is simple. When a classloader loads a class, the
classloader creates a ``java.lang.Class`` object that describes the loaded
class.  A thread acquires the lock from that Class object.  For example, in
``SyncMethods.classMethod();``, the thread acquires the lock from the
SyncMethods Class object.

The lock assigned to a SyncMethods object and the lock assigned to the
SyncMethods Class object are two different locks.  As a result, one thread may
execute inside of either instance method, while a second thread simultaneously
executes inside of the class method.

Synchronized Statements
-----------------------

In contrast to the synchronized method, a synchronized statement is a monitor
entry with a (usually) smaller critical section.  The statement begins with the
keyword synchronized, continues with an object identifier placed between a pair
of round bracket characters, and concludes with a block of statements that
serves as a critical section.

The following code fragment illustrates the synchronized statement:

::

  public class SyncStatements
  {
     public void instanceMethod1 ()
     {
        // Setup code.

        synchronized (this)
        {
           // Update file.
        }

        // Cleanup code.
     }

     public void instanceMethod2 ()
     {
        // Setup code.

        synchronized (this)
        {
           // Read from file.
        }

        // Cleanup code.
     }
  }

Let's assume ``instanceMethod1()`` is invoked by a thread that must
periodically update a file and ``instanceMethod2()`` is invoked by a different
thread whenever it needs to read from that file.  In addition to the actual
file I/O code, each method contains extensive setup and cleanup code, which
we'll assume is completely independent of the other method's setup and cleanup
code. Assume also that there are no interdependencies.

Because the setup and cleanup code is independent, the simultaneous execution
of both methods' setup codes or both methods' cleanup codes does not cause data
corruption, and synchronization isn't required.  Since at least part of each
method doesn't need to be synchronized, there is no point in synchronizing the
entire method.  But threads cannot simultaneously update a file and read from
that same file.  Therefore, each method's appropriate file I/O code is placed
within a synchronized statement.  When one thread tries to invoke
``instanceMethod1()``'s update file code, it must first acquire the lock that
associates with the current object (that keyword ``this`` signifies).
Similarly, when the other thread tries invoking ``instanceMethod2()``'s read
file code, that thread must acquire the same lock.  Only one thread will
succeed (if both threads simultaneously try acquiring the lock) and the file
will be updated or read from, depending on which thread obtains the lock.

**Note:** The statement is synchronized on ``this``.  Two instances of the same
class will not be synchronized.

volatile
========

http://today.java.net/pub/a/today/2004/09/15/sync2.html

``volatile`` synchronizes the value of one variable between thread memory and
*main* memory.

