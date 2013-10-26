Unit Testing
************

Setup
=====

To add unit testing to a project:

Right click on the project, choose *Properties*, *Java Build Path*, Select the
*Libraries* tab

Click *Add External JARS* and add ``junit.jar`` from:

::

  C:\Tools\Eclipse\plugins\org.junit_3.8.1

Testing
=======

To create a unit test for a class:

Right click on the package where you want to add the test: *New*,
*JUnit Test Case*

Make sure the superclass is:

::

  junit.framework.TestCase

Select the method stubs you want to create...

Browse for the class you want to test.

The name of the class should be the class name followed by the word ``Test``:

e.g. To test class ``Xyz``, the test class should be called ``XyzTest``.

The names of the test functions will be the opposite.

So to test ``getName()`` the test function will be called ``testGetName()``.

Test Suite
==========

To create a test suite

Right click on the package where you want to create the test:

*New*, *Other...*, *Java*, *JUnit*, *JUnit Test Suite*.

To run the test suite:

Right click on the test suite in the project and select *Run as JUnit Test*.

Assertion
=========

Possible assertion types are as follows:

::

  assertEquals(expected, actual)
  assertEquals(message, expected, actual)
  assertEquals(expected, actual, delta) - used on doubles or floats, where delta is the difference in precision
  assertEquals(message, expected, actual, delta) - used on doubles or floats, where delta is the difference in precision
  assertFalse(condition)
  assertFalse(message, condition)
  assertNotNull(object)
  assertNotNull(message, object)
  assertNotSame(expected, actual)
  assertNotSame(message, expected, actual)
  assertNull(object)
  assertNull(message, object)
  assertSame(expected, actual)
  assertSame(message, expected, actual)
  assertTrue(condition)
  assertTrue(message, condition)
  fail()
  fail(message)
  failNotEquals(message, expected, actual)
  failNotSame(message, expected, actual)
  failSame(message)

