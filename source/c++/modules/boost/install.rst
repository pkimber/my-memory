Install
*******

.. highlight:: c++

Download
========

Download ``boost_1_33_1.zip`` from http://www.boost.org/

Extract to:

::

  C:\src\boost_1_33_1\

Downloaded precompiled ``bjam`` (``boost-jam-3.1.13-1-ntx86.zip``)

Extract to:

::

  C:\tools\boost-jam-3.1.13-1-ntx86\

Build
=====

Run *Visual Studio .NET 2003 Command Prompt* to create a command prompt with
the correct path set-up for Visual C++.

::

  cd C:\src\boost_1_33_1\
  \tools\boost-jam-3.1.13-1-ntx86\bjam "-sTOOLS=vc-7_1" install

Wait for it to build (if you want to build ``boost.python`` see Cognito
Support System, log number 00052142).

Examples
========

Command Line
------------

To build the examples:

::

  cd c:\boost_1_32_0\libs\thread\example
  ..\..\..\bjam "-sTOOLS=vc-7_1"

Visual Studio
-------------

To compile an example program in Visual C++

Change *Configuration Properties*, *C/C++*, *Code Generation*,
*Runtime Library* to:

``Multi-threaded Debug DLL (/MDd)``

Add the following to *Configuration Properties*, *C/C++*, *General*,
*Additional Include Directories*:

::

  \boost_1_32_0

Add the following to *Configuration Properties*, *Linker*,
*Additional Library Directories*:

::

  \boost\lib

Issues
======

Warnings
--------

Is producing several warnings in the compile/link process.  Would like to get
rid of them.

