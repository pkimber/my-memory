DoFixture
*********

Links
=====

See *Fit for Developing Software, Chapter 10, Page 73*.

Sample
------

Sample project: http://toybox/hg/sample/file/tip/java/sample-fit-test

(although there is an error when we run it!)

Notes
=====

- Only the first row needs to have a fixture name.
- A flow style action is defined in a single row.
- A flow style action contains *keywords* in the first cell and in every second
  cell of the row thereafter.
- Actions may be provided in separate tables tables but need not be.
- A check action in flow style is applied to another action rather than to a
  single field, as with ``ActionFixture``.
- Instead of using a fixture name, an action in a flow style table may select
  a particular fixture, determining how the rest of the table is to be used in
  testing.

Commands
========

http://www.agilistas.org/PyFIT_0.8a1_Doc/FitLib_DoFixture.htm

``DoFixture`` and ``SequenceFixture`` provide a number of special commands.

These are always in the first cell of the row. The commands are:

+-----------------------+-------------------------------------------------------+
| ``check``             | This checks that the return value of the requested    |
|                       | method matches the value in the last cell of the row. |
+-----------------------+-------------------------------------------------------+
| ``show``              | This displays the return value in a new cell at the   |
|                       | end of the row.                                       |
+-----------------------+-------------------------------------------------------+
| ``ensure``            | This checks that the method call succeeded.  If the   |
|                       | result is defined as a boolean, it must be True.      |
|                       | If it is defined as anything else, it must not throw  |
|                       | an exception.                                         |
+-----------------------+-------------------------------------------------------+
| ``reject`` or ``not`` | This checks that the method call failed.  If the      |
|                       | result is defined as a boolean, it must be False,     |
|                       | otherwise it must raise an exception.                 |
+-----------------------+-------------------------------------------------------+
| ``note``              | ignores the rest of the row                           |
+-----------------------+-------------------------------------------------------+

