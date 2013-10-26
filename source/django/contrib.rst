Contributing to Django
**********************

Getting Started
===============

`Preparing for the next Django sprint`_

Contributing to Django
======================

Refer to the Django documentation on *Contributing to Django*.

- Coding style
- Unit tests

Run tests against SQLite (unless you are changing database code, in which
case you have to run it against all supported databases.

Tests take about 5 minutes for SQLite in memory.  If running on Windows, it
takes forever... (don't know why).

Two types of tests... proper regression tests and simple *how to* tests.

Read the *Testing Django Apps* document.

Releases
========

Basic plan is to say when the next release is going to be.  The time will be
split into three periods of time:

- *I want a pony*... *there are no stupid ideas*.

  Then come up with three lists:

  - List some things we absolutely have to get done.
  - A list of stuff which we are not going to work on.
  - A list of stuff we would like to get in the release.

- Implementation period.  Get everything written and checked in.

  Large feature work to be done on branches.  The problem with this is that no
  one tests code on branches.

- Bug fixes, alpha, beta releases.


.. _`Preparing for the next Django sprint`: http://www.pointy-stick.com/blog/2008/02/15/preparing-next-django-sprint/

