Arrays
******

Sample
======

::

  String[] names = new String[100];

  names[0] = "Peter";
  names[1] = "Alison";

  for (int i = 0; i < names.length; i++) {
      System.out.println("Name: " + names[i]);
  }

Initialise
==========

To initialise an array:

::

  private static final String[] TEST_DATA = {"400", "401", "402", "403", "406", "408", "409"};

Convert
=======

List
----

Convert an array to a list:

::

  import java.util.Arrays;
  Arrays.asList(TEST_DATA)

Note: This will only work for arrays of Objects **NOT** primitive types.

String
------

*toString*

To convert an array to a string (Java 1.5 and above):

::

  String[] names = {"Peter", "Alison", "Barry", "Martin"};
  System.out.println(Arrays.toString(names));

To do the same thing in Java 1.4:

::

  Arrays.asList(result).toString()

*Character Array*

To convert a character array, ``char[]`` to a ``String``:

::

  String pass = new String(event.getCharArray());

