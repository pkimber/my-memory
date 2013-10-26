JUnit
*****

TestRunner
==========

To run ``MyTest`` using:

- The graphical *TestRunner*:

  ::

    java -cp junit.jar;AllTests.jar junit.awtui.TestRunner com.company.MyTest

- The command line *TestRunner*:

  ::

    java -cp junit.jar;AllTests.jar junit.textui.TestRunner com.company.MyTest

Exception
=========

To test an exception:

::

  try {
      helper.getQueryDetail();
      fail("Should throw a URLHelperException");
  } catch (URLHelperException e) {
      assertTrue(true);
  }

assert
======

The supplied message (first parameter) is printed if the assertion fails...

::

  assertTrue("Result should be B is " + pos1, pos1.equals("B"));

Old Notes
=========

Test class name:
----------------

::

  com.mycompany.test.AllTests

