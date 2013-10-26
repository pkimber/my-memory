NUnit - Getting Started
***********************

Download
========

Downloaded ``NUnit-2.4.7-net-2.0.msi`` from
http://www.nunit.org/index.php?p=download.

Install
=======

I installed to:

::

  C:\tools\NUnit 2.4.7\

Test
====

To test the installation:

- *Start*, *Program Files*, *NUnit 2.4.3*, *NUnit GUI (.NET 1.1)*.  This will
  start the NUnit GUI.
- *File*, *Open Project*, Open ``bin/NUnitTests.nunit`` from the installation
  folder.
- Click *Run*.

The tests should all pass (yellow and green icons).

Visual Studio
=============

Reference
---------

In your project, add a reference to ``bin/nunit.framework.dll``.

Note: If you make a copy of ``nunit.framework.dll``, don't forget to copy
``nunit.framework.xml`` as well.

Output Type
-----------

Set the project up so that it builds as a ``dll``:

Right click on the project, select *Properties*, *Common Properties*, *General*
set the *Output Type* to ``Class Library``.

From the ``.csproj`` file:

::

  <Build>
      <Settings
      ...
          OutputType = "Library"

Tests
=====

Sample code:

::

  namespace my_search_test
  {
      using NUnit.Framework;

      [TestFixture]
      public class SearchTest
      {
          public SearchTest()
          {
          }

          [SetUp]
          public void Init()
          {
          }

          [TearDown]
          public void Dispose()
          {
          }

          [Test]
          public void testSimpleSearch()
          {
              Assert.AreEqual("A", "A");
          }
      }
  }

- :doc:`constraints`
- `Assertions`_
- `Attributes`_

Test Runner
===========

Graphical
---------

Run the graphical test runner, "*NUnit GUI (.NET 1.1)*" (which is in the
*NUnit* program group).

Open the ``dll`` file built by your project and click *Run*.

Visual Studio
-------------

`NUnit and Visual Studio.Net`_

- Right click on the project *Properties*, *Configuration Properties*,
  *Debugging*.
- Set the *Debug Mode* to ``Program``.
- Set the *Start Application* to:

  ::

    C:\tools\NUnit-2.4.3\bin\nunit.exe

  ...or wherever you installed NUnit to.

  Note: There appears to be a little bug in the UI.  To access the
  *Start Application* field, click *Apply* to make it active.

- Set the *Command Line Arguments* to "``my-test.dll /run``", or whatever your
  library is called.

  Note: Variable substitution does not seem to work in the *Command Line Arguments*
  field.

- Run your project in the normal way.  The NUnit GUI will appear and run your
  tests.


.. _`Assertions`: http://www.nunit.org/index.php?p=assertions
.. _`Attributes`: http://www.nunit.org/index.php?p=attributes
.. _`NUnit and Visual Studio.Net`: http://dotnet.org.za/heinrich/archive/2005/07/11/39048.aspx
