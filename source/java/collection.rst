Collections
***********

.. highlight:: java

Thinking in Java
================

Bruce Eckel, Thinking in Java, Chapter 11, Collections of Objects, Choosing an
Implementation, Page 550

- By now you should understand that there are really only three container
  components: Map, List and Set, but more than one implementation of each
  interface.
- To convert an old style Array to a List or Set, pass the result of
  ``Arrays.asList()`` to the constructor of a List or Set.

Java 2
======

- Replaced Vector with ArrayList
- Replaced Hashtable with HashMap

Collection
==========

Conversion
----------

To convert a collection to an array:

::

  Collection names = getNames();
  names.toArray();

I guess the array contains *Objects*...!?

Iterate
-------

Java 1.5 (and above):

::

  SomeObject obj;
  for (Object aContainer : vec) {
      obj = (SomeObject) aContainer;
      // code to use obj
  }

List
====

Sample code
-----------

::

  import java.util.ArrayList;
  import java.util.List;

  List headings = new ArrayList();

To get an item in an ArrayList from a specific index:

::

    searchResults.get(i)

Synchronized
------------

http://java.sun.com/j2se/1.4.2/docs/api/java/util/Collections.html

::

  List list = Collections.synchronizedList(new ArrayList());

Note: It is imperative that the user manually synchronize on the returned list
when iterating over it:

Iterator
--------

Iterate through an ArrayList:

::

  for (Iterator i = dataList.iterator(); i.hasNext();) {
      DocumentData data = (DocumentData) i.next();
  }

*Version 1.5 and above...*

::

  void cancelAll(Collection<TimerTask> c) {
      for (TimerTask t : c)
          t.cancel();
  }

Append
------

To append one array list to another:

::

    unitTestResult.addAll(search.getItems());

Sort
----

::

  import java.util.Collections;
  Collections.sort(siteList);

Set
===

A collection that contains no duplicate elements.

::

  Set mySet = new java.util.HashSet();

To add an integer to a set...

::

  int i = 20;
  Set documentIDs = new HashSet();
  documentIDs.add(new Integer(i));

To add our own objects to a set we need to create the ``hashCode()`` and
``equals()`` methods.  See the *Map*, *Keys* notes below to see how to
implement these methods.

To convert a ``set`` to an array list:

::

  List<Integer> list = new ArrayList<Integer>(documentIDs);

Map
===

`JavaDoc - Interface - java.util.Map - Java 2 Platform Std. Ed. v1.4.2`_

Add and Retrieve
----------------

::

  Map result = new HashMap();
  result.put("Name", "Patrick");

  assertTrue(result.get("Name").equals("Patrick"));

  if (!result.containsKey("Name")) {

Values
------

To get the values in a map

::

  Collection c = result.values();

Keys
----

To get the keys in the map

::

  Set s = result.keySet();

Iterate
-------

To iterate through the keys/values:

*Java 1.5*...

::

  for(Map.Entry<K, V> e : map.entrySet())
      System.out.println(e.getKey() + ": " + e.getValue());

*Java 1.4*...

::

  Map names = new HashMap();
  names.put("ADK", "Alison");
  names.put("PJK", "Peter");

  for (Iterator i = names.entrySet().iterator(); i.hasNext();) {
      Map.Entry entry = (Map.Entry) i.next();
      System.out.println((String) entry.getKey());
      System.out.println("  " + (String) entry.getValue());
  }

Synchronized
------------

http://java.sun.com/j2se/1.4.2/docs/api/java/util/Collections.html

::

  Map m = Collections.synchronizedMap(new HashMap());

It is imperative that the user manually synchronize on the returned map when
iterating over any of its collection views:

Keys
----

To use your own classes as keys in a HashMap, you must override both
``hashCode()`` and ``equals()``.

The hash code can be generated in (at least) two ways:

- Using the ``HashCodeBuilder`` utility from Commons Lang:
  :doc:`../apache/commons-lang`.
- Eclipse has an option to *Generate hashCode() and equals()...* available from
  the *Source* menu.

The ``equals()`` method will take a similar form to this:

::

  public class Person {
    String name;
    int age;

    public boolean equals(final Object o) {
      return (o instanceof Person)
        && name.equals(((Person) o).name)
        && age == ((Person) o).age;
    }
  }

Stack
=====

From Bruce Eckel, Thinking in Java:

*You'll notice that the legacy classes Vector, Stack, and Hashtable are not
included, because in all cases there are preferred classes within the Java 2
Containers*.

*LinkedList, Also has addFirst(), addLast(), getFirst(), getLast(),
removeFirst(), and removeLast() (which are not defined in any interfaces or
base classes) to allow it to be used as a stack, a queue, and a deque*.


.. _`JavaDoc - Interface - java.util.Map - Java 2 Platform Std. Ed. v1.4.2`: http://java.sun.com/j2se/1.4.2/docs/api/java/util/Map.html

