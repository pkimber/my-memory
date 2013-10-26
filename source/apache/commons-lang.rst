Commons Lang
************

Links
=====

- http://jakarta.apache.org/commons/lang/index.html
- `My Top List of Java Tools`_

Maven
=====

::

  <dependency>
    <groupId>commons-lang</groupId>
    <artifactId>commons-lang</artifactId>
    <version>2.4</version>
  </dependency>

Exception
=========

getRootCause_

To unwrap exception causes until you find the ultimate cause of the problem:

::

  ExceptionUtils.getRootCause(Throwable throwable)

Hash Code
=========

HashCodeBuilder_

The ``HashCodeBuilder`` constructor has two parameters.

- Two randomly chosen, non-zero, odd numbers must be passed in.
- Ideally these should be different for each class, however this is not vital.
- Prime numbers are preferred, especially for the multiplier (second parameter).
  Have a look at `Prime number from Wikipedia`_ for a list of prime numbers.

::

  import org.apache.commons.lang.builder.HashCodeBuilder;

  public class Person {

      /** The initial value for the hash code builder. */
      private static final int HASH_BUILDER_INITIAL = 17;
      /** The multiplier for the hash code builder. */
      private static final int HASH_BUILDER_MULTIPLIER = 37;

      String name;
      int age;
      boolean smoker;

      public int hashCode() {
          // you pick a hard-coded, randomly chosen, non-zero, odd number
          // ideally different for each class
          return new HashCodeBuilder(HASH_BUILDER_INITIAL, HASH_BUILDER_MULTIPLIER)
              .append(name)
              .append(age)
              .append(smoker)
              .toHashCode();
      }
  }

String Escape Utilities
=======================

StringEscapeUtils_

unescapeXml
-----------

unescapeXml_

::

  StringEscapeUtils.unescapeXml(line)

String Utilities
================

StringUtils.html_

contains
--------

contains_:

::

  import org.apache.commons.lang.StringUtils;
  if (StringUtils.contains("image/jpeg", "jpeg")) {

deleteWhitespace
----------------

*Add a sample for this method*.

isBlank
-------

Checks if a String is whitespace, empty ("") or ``null``:

::

  if (StringUtils.isBlank(ext)) {

Note: Can also use ``isNotBlank``...

isEmpty
-------

Checks if a String is empty ("") or ``null``:

::

  if (StringUtils.isEmpty(""))

Note: Can also use ``isNotEmpty``...

Other
-----

::

  StringUtils.equalsIgnoreCase(null, "abc")             // false
  StringUtils.substringAfterLast("foo.bar.baz", ".");   // "baz"
  StringUtils.substringBeforeLast("foo.bar.baz", ".");  // "foo.bar"
  StringUtils.split("foo.bar.baz", '.');                // { "foo", "bar", "baz" }
  StringUtils.split("foo,  bar,baz", ", ");             // { "foo", "bar", "baz" }
  StringUtils.leftPad("1", 3, '0');                     // "001"

remove
------

To return the ``body`` with the ``keyword`` removed:

::

  final String value = StringUtils.remove(body, keyword);

replace
-------

Replaces all occurrences of a ``String`` within another ``String``:

::

  String result = StringUtils.replace("aba", "a", "z")
  // result == "zbz"

rightPad
--------

::

  import org.apache.commons.lang.StringUtils;

  StringUtils.rightPad("Padme!", 10)

ToString
--------

`Implementing a simple toString() with Apache Commons`_

ToStringBuilder_

::

  public class Person {
      String name;
      int age;
      boolean smoker;

      public String toString() {
          return new ToStringBuilder(this).
              append("name", name).
              append("age", age).
              append("smoker", smoker).
              toString();
      }
  }


.. _`My Top List of Java Tools`: http://java.dzone.com/articles/my-top-list-java-tools
.. _getRootCause: http://jakarta.apache.org/commons/lang/api-release/org/apache/commons/lang/exception/ExceptionUtils.html#getRootCause(java.lang.Throwable)
.. _HashCodeBuilder: http://jakarta.apache.org/commons/lang/apidocs/org/apache/commons/lang/builder/HashCodeBuilder.html
.. _`Prime number from Wikipedia`: http://en.wikipedia.org/wiki/Prime_number
.. _StringEscapeUtils: http://commons.apache.org/lang/api/org/apache/commons/lang/StringEscapeUtils.html
.. _unescapeXml: http://commons.apache.org/lang/api/org/apache/commons/lang/StringEscapeUtils.html#unescapeXml(java.lang.String)
.. _StringUtils.html: http://commons.apache.org/lang/api-release/org/apache/commons/lang/StringUtils.html
.. _contains: http://commons.apache.org/lang/api-release/org/apache/commons/lang/StringUtils.html#contains(java.lang.String, java.lang.String)
.. _`Implementing a simple toString() with Apache Commons`: http://blogs.bytecode.com.au/glen/2007/10/05/implementing-a-simple-tostring---with-apache-commons.html
.. _ToStringBuilder: http://commons.apache.org/lang/api-release/index.html

