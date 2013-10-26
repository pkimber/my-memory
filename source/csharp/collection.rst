Collections
***********

.NET 1.1
========

=======================  ======================  ================
**What it Does**         **Java 2 (JDK 1.2+)**   **C#**
=======================  ======================  ================
Resizable Arrays         ArrayList               ArrayList
Linked Lists             LinkedList              ArrayList
Maps/Dictionaries        HashMap / Map           Hashtable
Stores Key/Value Pairs   SortedMap               SortedList
=======================  ======================  ================

**Note**:

- Generics were introduced in .NET version 2.0

ArrayList
---------

::

  using System;
  using System.Collections;

  public class SamplesArrayList {

    public static void Main()  {

      // Creates and initializes a new ArrayList.
      ArrayList myAL = new ArrayList();
      myAL.Add("Hello");
      myAL.Add("World");
      myAL.Add("!");

      // Displays the properties and values of the ArrayList.
      Console.WriteLine( "myAL" );
      Console.WriteLine( "\tCount:    {0}", myAL.Count );
      Console.WriteLine( "\tCapacity: {0}", myAL.Capacity );
      Console.Write( "\tValues:" );
      PrintValues( myAL );
    }

    public static void PrintValues( IEnumerable myList )  {
      System.Collections.IEnumerator myEnumerator = myList.GetEnumerator();
      while (myEnumerator.MoveNext())
        Console.Write( "\t{0}", myEnumerator.Current);
      Console.WriteLine();
    }
  }
  /*
  This code produces the following output.

  myAL
      Count:    3
      Capacity: 16
      Values:    Hello    World    !
  */

Hashtable
---------

...in .NET 2 use ``System.Collections.Generic.Dictionary``...

`.NET Framework Developer Center - Hashtable Class`_

::

  using System.Collections;

  Hashtable openWith = new Hashtable();

  openWith.Add("txt", "notepad.exe");
  openWith.Add("rtf", "wordpad.exe");

  Console.WriteLine("For key = \"rtf\", value = {0}.", openWith["rtf"]);

  if (openWith.ContainsKey("rtf"))
  {
  }

  foreach( DictionaryEntry de in openWith )
  {
    Console.WriteLine("Key = {0}, Value = {1}", de.Key, de.Value);
  }

  ICollection valueColl = openWith.Values;
  foreach( string s in valueColl )
  {
      Console.WriteLine("Value = {0}", s);
  }

  ICollection keyColl = openWith.Keys;
  foreach( string s in keyColl )
  {
      Console.WriteLine("Key = {0}", s);
  }

  openWith.Remove("rtf");

.NET 2
======

Dictionary
----------

`Replacing the Hashtable with Its Generic Counterpart`_
Replace all occurrences of the ``System.Collections.Hashtable`` class with the
faster generic ``System.Collections.Generic.Dictionary`` class.


.. _`.NET Framework Developer Center - Hashtable Class`: http://msdn2.microsoft.com/en-us/library/system.collections.hashtable.aspx
.. _`Replacing the Hashtable with Its Generic Counterpart`: http://en.csharp-online.net/CSharp_Generics_Recipes%E2%80%94Replacing_the_Hashtable_with_Its_Generic_Counterpart

