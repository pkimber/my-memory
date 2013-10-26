Timer
*****

Links
=====

`Using the Timer and TimerTask Classes`_

Stopping Timer Threads
======================

By default, a program keeps running as long as its timer threads are running.
You can terminate a timer thread in four ways:

- Invoke cancel on the timer.  You can do this from anywhere in the program,
  such as from a timer task's run method.
- Make the timer's thread a "*daemon*" by creating the timer like this:
  ``new Timer(true)``.  If the only threads left in the program are daemon
  threads, the program exits.
- After all the timer's scheduled tasks have finished executing, remove all
  references to the ``Timer`` object. Eventually, the timer's thread will
  terminate.
- Invoke the ``System.exit`` method, which makes the entire program (and all
  its threads) exit.

Sample
======

Standard Repeat
---------------

A Maven 2 project can be checked out from Subversion on:

http://g1/svn/home/patrick/learn/timer-example/

::

  package com.mycompany.example;

  import java.util.Timer;
  import java.util.TimerTask;

  public final class TimerExample extends TimerTask {

      /** Number of millseconds - 5 seconds. */
      private static final long DELAY_IN_MILLISECONDS = 5000;

      /** Timer to make sure all errors are reported. */
      private Timer timer = null;

      /** Create the timer - which will make repeated calls to run(). */
      public void createTimer() {
          if (timer == null) {
              timer = new Timer(true);
              timer.scheduleAtFixedRate(this, DELAY_IN_MILLISECONDS, DELAY_IN_MILLISECONDS);
          }
      }

      /** This function will be called by the timer object at the specified interval */
      public void run() {
          System.out.println("run()");
      }
  }

The associated unit test:

::

  package com.mycompany.example;

  import junit.framework.TestCase;

  public class TimerExampleTest extends TestCase {
      public void testTimer() throws InterruptedException {
          TimerExample timer = new TimerExample();
          timer.createTimer();
          Thread.sleep(30000);
      }
  }

Simple Repeat
-------------

`Scheduling a Timer Task to Run Repeatedly`_

::

  int delay = 5000;   // delay for 5 sec.
  int period = 1000;  // repeat every sec.

  Timer timer = new Timer(true);

  timer.scheduleAtFixedRate(new TimerTask() {
          public void run() {
              // Task here ...
          }
      }, delay, period);

Specific Time
-------------

`Scheduling a Timer Task to Run at a Certain Time`_

::

  int numberOfMillisecondsInTheFuture = 10000; // 10 sec
  Date timeToRun = new Date(System.currentTimeMillis() + numberOfMillisecondsInTheFuture);

  Timer timer = new Timer(true);

  timer.schedule(new TimerTask() {
          public void run() {
              // Task here ...
          }
      }, timeToRun)


.. _`Using the Timer and TimerTask Classes`: http://java.sun.com/docs/books/tutorial/essential/threads/timer.html
.. _`Scheduling a Timer Task to Run Repeatedly`: http://www.exampledepot.com/egs/java.util/ScheduleRepeat.html
.. _`Scheduling a Timer Task to Run at a Certain Time`: http://www.exampledepot.com/egs/java.util/ScheduleLater.html

