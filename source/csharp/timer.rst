Timer
*****

Sample
======

`Illustrates the use of the Timer class`_


::

  using System;
  using System.Threading;

  public class Example14_5
  {
    // the CheckTime method is called by the Timer
    public static void CheckTime(Object state)
    {
      Console.WriteLine(DateTime.Now);
    }

    public static void Main()
    {
      // create the delegate that the Timer will call
      TimerCallback tc = new TimerCallback(CheckTime);

      // create a Timer that runs twice a second, starting in one second
      Timer t = new Timer(tc, null, 1000, 500);

      // Wait for user input
      Console.WriteLine("Press Enter to exit");
      int i = Console.Read();

      // clean up the resources
      t.Dispose();
      t = null;
    }
  }

**Note:** These timer objects are from the ``System.Threading`` namespace.
Other timers can be found in the ``System.Timers`` namespace.

25/10/2007 I don't really understand the difference!


.. _`Illustrates the use of the Timer class`: http://www.java2s.com/Code/CSharp/Development-Class/illustratestheuseoftheTimerclass.htm

