Data Type Conversions
*********************

Boolean
=======

String
------

Convert String to Boolean

http://java.sun.com/j2se/1.4.2/docs/api/java/lang/Boolean.html

*The Boolean returned represents the value true if the string argument is not
null  and is equal, ignoring case, to the string "true"*

::

  Boolean.valueOf(s).booleanValue()

float
=====

Convert an ``float`` to an ``int``:

::

  float value = 2.3f;
  int y = Math.round(value);

int
===

String
------

Convert an ``int`` to a ``String``:

::

  int parentId = 2;
  String s = Integer.toString(parentId)

Integer
=======

String
------

Convert a string to an int:

::

  import java.lang.Integer;

  String aString = "78";
  int aInt = Integer.parseInt(aString);

Long
====

String
------

Convert a long to a string

::

  long keyID = 35;
  String data = String.valueOf(keyID);

String
======

Base64
------

See notes for Apache Commons Codec: :doc:`../apache/commons-codec`.

Byte[]
------

Convert a String to a Byte[]:

::

  s.getBytes()

Convert a Byte[] to a String:

::

  new String(s.getBytes());
