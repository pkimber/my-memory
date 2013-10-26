Getting Started
***************

.. highlight:: c++

Links
=====

- http://pocoproject.org/info/

Download
========

Download ``poco-1.3.5.zip`` from http://pocoproject.org/download/.

Build
=====

Command Line
------------

**I couldn't get this to work - had to use the IDE (see below)**...

- Extract the archive to a folder.  I extracted to:

  ::

    \src\poco-1.3.5\

- Open a *Visual Studio 2008 Command Prompt*.
- Change into the source folder and run the build command:

  ::

    buildwin 90 rebuild static both yes

IDE
---

Open and build the following solutions (I built the ``static`` libraries):

::


  CppUnit/CppUnit_vs90.sln
  Foundation/Foundation_vs90.sln
  Net/Net_vs90.sln
  XML/XML_vs90.sln
  Util/Util_vs90.sln

Usage
=====

- For a static build, the ``lib`` files will be in the ``lib`` folder.
- For shared, the ``dll`` files will be in the ``bin`` folder.

Applications
============

Include
-------

::

  C:\src\poco-1.3.5\Foundation\include;C:\src\poco-1.3.5\Net\include

Link
----

To link to the static libraries, define ``POCO_STATIC``.

- Library Directories

  ::

    C:\src\poco-1.3.5\lib

