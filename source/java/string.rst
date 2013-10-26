String
******

http://java.sun.com/j2se/1.4.2/docs/api/java/lang/String.html

Trim/Length
===========

In this example result is a String

::

  result.trim().length()

Compare
=======

Compares this String to another String, ignoring case considerations.
Returns a boolean

::

  equalsIgnoreCase(String anotherString)

*Compares two strings lexicographically, ignoring case differences*.

- Returns an int
- *PROBABLY BETTER TO USE* ``equalsIgnoreCase``

::

  compareToIgnoreCase(String str)

Contains
========

::

  if (os.indexOf("linux") != -1) {

General String Handling
=======================

An untidy bit of code which:

- finds the index of a string withing another string
- extracts a substring
- iterates through a string
- extracts individual characters from a string
- tests a character to see if it is a digit (numeric)
- convert a string to an integer

  ::

    int startBody = responseBody.indexOf(BODY_TAG);
    int endBody = responseBody.indexOf("</body>");

    String result = "";
    String body = responseBody.substring(startBody + BODY_TAG.length(), endBody);
    for (int i = 0; i < body.length(); i++) {
       char c = body.charAt(i);
       if (Character.isDigit(c)) {
           result = result + c;
       }
    }
    return Integer.parseInt(result);

MessageFormat
=============

::

  import java.text.MessageFormat;

  String result = MessageFormat.format(
      "The book with title {0} is sold with price {1,number,currency} to {2}",
      new Object[] {title, price, buyername});

  logger.info(MessageFormat.format("create(userId:{0},name:{1},filename:{2},original:{3})",
      userId, name, filename, original));

Pad
===

See String Utilities in The Apache, Jakarta Project - Commons Lang,
:doc:`../apache/commons-lang`

Replace
=======

See code snippets, *AlphaNumeric* and *Spaces*, :doc:`snippets/string` to see
how to use ``replaceAll``.

Split
=====

The following example illustrates how the String.split method can be used to
break up a string into its basic tokens:

::

  String[] result = "this is a test".split("\\s");
  for (int x = 0; x < result.length; x++) {
     System.out.println(result[x]);
  }

String Buffer
=============

To use a string buffer for building strings...

::

  StringBuffer result = new StringBuffer();
  result.append("Cluster TCP Port: ");
  result.append("\r\nColdFusion HTTP Port: ");
  return result.toString();

`Quick Cheap Win with StringBuilder`_

Search
======

Returns the index within this string of the last occurrence of the specified
character.

::

  int pos = url.lastIndexOf(".");
  if (pos == -1) {
      // Cannot find the string...


.. _`Quick Cheap Win with StringBuilder`: http://jroller.com/page/rd?entry=h3_quick_cheap_win_with

