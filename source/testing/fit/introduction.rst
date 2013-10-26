Introduction
************

Definition
==========

Framework for Integrated Tests

Purpose
=======

- Fit is a tool for enhancing collaboration in software development.
- It's an invaluable way to collaborate on complicated problems and get them
  right early in development.
- Fit allows customers, testers, and programmers to learn what their software
  should do and what it does do.
- It automatically compares customers expectations to actual results.
- Ideal for testing business rules and ensuring the business value of software.

Writing
=======

- Tests are written using simple html tables.
- Can use Microsoft Word or an html editor.

Run
===

The html files are processed by the FIT library and the cells are coloured:

- Green cell = Success.
- Red cell = Failure

Example Fixture:

::

  ../../images/howto/fit/example.gif

Sample - Add User
=================

Create
------

::

  ../../images/howto/fit/create-dofixture.gif

Result
------

``DoFixture``:

::

  ../../images/howto/fit/example-dofixture.gif

Sample - Add User - Who Already Exists!
=======================================

Create
------

DoFixture - Create - Fail

::

  ../../images/howto/fit/create-dofixture-fail.gif

Result
------

DoFixture - Fail

::

  ../../images/howto/fit/example-dofixture-fail.gif

