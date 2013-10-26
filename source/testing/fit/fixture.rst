Fixture
*******

ActionFixture
-------------

An action fixture interprets rows as a sequence of commands to be performed in
order.

An action fixture interprets tables for which the first column contains one of a
small number of commands.  Subsequent columns contain values interpreted by the
particular command.  The generic action fixture offers only four commands, but
subclasses may extend this set.

- **start** aClass

  Subsequent commands are directed to an instance of aClass. This is similar to
  navigating to a particular GUI screen.

- **enter** aMethod anArgument

  Invoke aMethod with anArgument (of type determined by aMethod.) This is
  similar to entering values into GUI fields.

- **press** aMethod

  Invoke aMethod with no arguments. This is similar to pressing a GUI button.

- **check** aMethod aValue

  Invoke aMethod with no arguments. Compare the returned value with aValue.
  This is similar to reading values from a GUI screen.

ColumnFixture
-------------

Are good for specifying the expected *calculated* value based on the *given*
value in a row.

Each row of a ColumnFixture table represents an independent test.

The value of an *empty* cell is assumed to be the same as the previous
non-empty cell in that column of the table.  If you want the text to be empty
write ``blank`` in the cell instead (see *Fit for Developing Software, Chapter
6, Page 46*).

RowFixture
----------

Are designed for testing that the results of a search or query are as expected.

The rows together form a single group, unlike the independent rows of a Column
fixture.

To test lists where the order is important, include an *order* column.  This
value needs to be added by the fixture (see *Fit for Developing Software,
Chapter 5, Page 34*).

Flow Style Actions
==================

http://fitlibrary.sourceforge.net/

ArrayFixture
------------

The ``ArrayFixture`` takes account of the order of the elements automatically.

See *Fit for Developing Software, Chapter 10, Page 78*.

CalculateFixture
----------------

Separate the *given* and *calculated* columns with an empty column.

See *Fit for Developing Software, Chapter 10, Page 78*.

DoFixture
---------

DoFixture notes: :doc:`do-fixture`.

SetUpFixture
------------

Use this fixture to get the system into a suitable state so that we can test
some business process.

We can also use a ``SetUpFixture`` table when several actions of the same form
are carried out in sequence.

See *Fit for Developing Software, Chapter 10, Page 77*.

SubsetFixture
-------------

It can sometimes be inconvenient to test all the elements of a list; we may be
interested in the values of only one or more specific elements.

See *Fit for Developing Software, Chapter 10, Page 79*.

Errors
======

If you are expecting an error in a calculation use the special value ``error``
in the calculated column.

Test Suites
===========

Format
------

Excel or HTML? See *Fit for Developing Software, Chapter 7, Page 54* for a
comparison.

Setup and Tear Down
-------------------

If a group of tests share the same setup tables, a ``SetUp.xls`` (or
``SetUp.html``) file may be included in the folder structure.  This file is
automatically included before each test file in that folder, and subfolders
before it is run.  A ``TearDown.xls`` (or ``TearDown.html``) file may also
be included (see *Fit for Developing Software, Chapter 7, Page 52*).

