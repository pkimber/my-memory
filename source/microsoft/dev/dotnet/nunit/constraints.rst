NUnit - Constraints
*******************

Links
=====

`Constraint-Based Assert Model (NUnit 2.4)`_

Exception
=========

I checked that an exception was thrown like this (not sure it is the best way
though):

::

  Exception result = null;
  try
  {
      fileManager.doSomeStuff();
  }
  catch (Exception e)
  {
      result = e;
  }
  Assert.That(result, Is.TypeOf(typeof(MySampleException)));

Sample
======

::

  using NUnit.Framework;
  using NUnit.Framework.SyntaxHelpers;

      [Test]
      public void testIsNew()
      {
          Assert.That(idx1.isNew(), Is.True);
      }

      [Test]
      public void testIsNewNot()
      {
          Assert.That(idx2.isNew(), Is.False);
      }

Issues
======

Is
--

::

  The type or namespace name 'Is' could not be found (are you missing a using directive or an assembly reference?)

Add ``using NUnit.Framework.SyntaxHelpers`` to your source file...


.. _`Constraint-Based Assert Model (NUnit 2.4)`: http://www.nunit.org/index.php?p=constraintModel&r=2.4.3
