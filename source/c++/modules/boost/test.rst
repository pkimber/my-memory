Test
****

.. highlight:: c++

Links
=====

- `Boost Test Library`_
- `IBM developerWorks, Part 1: Get to know the Boost unit test framework`_

Alternatives
------------

CppUnit

- `CppUnit`_
- `Unit Testing C++ Programs using CppUnit in Eclipse IDE on Windows`_

Visual Studio
=============

The source code for the unit test framework is added to the project by
including ``unit_test_framework.hpp``.

Make sure this file is **not** *Excluded From Build* and the *Tool* is set to
*C/C++ Compiler Tool*:

::

  [../../images/howto/boost/test-visual-studio.gif]


.. _`Boost Test Library`: http://www.boost.org/libs/test/doc/index.html
.. _`IBM developerWorks, Part 1: Get to know the Boost unit test framework`: http://www.ibm.com/developerworks/aix/library/au-ctools1_boost/
.. _`CppUnit`: http://cppunit.sourceforge.net/cppunit-wiki
.. _`Unit Testing C++ Programs using CppUnit in Eclipse IDE on Windows`: http://beans.seartipy.com/2007/11/26/unit-testing-c-programs-using-cppunit-in-eclipse-ide-on-windows/
