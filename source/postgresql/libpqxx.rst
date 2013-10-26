libpqxx
*******

**Note**: 25/10/2007 I have updated these notes... but I cannot get
``libpqxx`` working with Visual Studio 2005...

Links
=====

http://pqxx.org/development/libpqxx/

Download
========

Download ``libpqxx-2.6.9.tar.gz`` from
http://pqxx.org/development/libpqxx/wiki/DownloadPage

I extracted to:

::

  C:\src\libpqxx-2.6.9\

Download ``postgresql-8.2.3.tar.gz`` from
http://www.postgresql.org/ftp/source/v8.2.3/

I extracted to:

::

  C:\src\postgresql-8.2.3\

Windows
=======

Note: It is *recommended practice is to build libpqxx as a static library,
not a DLL*.

Build PostgreSQL Win32 Interface
--------------------------------

Start the *Visual Studio 2005 Command Prompt* and change into the PostgreSQL
``src`` folder:

::

  cd C:\src\postgresql-8.2.3\src\
  nmake /f win32.mak
  nmake /f win32.mak DEBUG=1

This should build the ``libpq`` interface.  You can check this by looking in
the folder:

::

  C:\src\postgresql-8.2.3\src\interfaces\libpq\Release

Build libpqxx
-------------

From the ``libpqxx-2.6.9`` folder:

Copy ``win32/common-sample`` to ``win32/common``, and edit the latter to
reflect the paths to your PostgreSQL includes and library files e.g.

::

  PGSQLSRC="C:\src\postgresql-8.2.3\src"

Copy:

::

  config\sample-headers\compiler\VisualC++.NET-2003\config-internal-compiler.h
  config\sample-headers\compiler\VisualC++.NET-2003\config-public-compiler.h
  config\sample-headers\libpq\8.1\config-internal-libpq.h

To:

::

  include\pqxx\

Start the *Visual Studio 2005 Command Prompt* and change into the
``libpqxx-2.6.9`` folder.

**Note:**

- Make sure a ``lib`` folder exists, if not create it.
- A Visual C++ bug specifies an incorrect namespace for ``disable_noticer``.
  To workaround, edit ``include/pqxx/connection_base.hxx``.  Just after the
  body of the ``disable_noticer`` you'll see two lines:

  ::

    namespace internal
    {

  The workaround is to add a ``typedef`` direct below that curly brace:

  ::

    namespace internal
    {
      typedef pqxx::disable_noticer disable_noticer;

  To build the project, run:

::

  nmake /f win32/vc-libpqxx.mak ALL

Project - Visual Studio
=======================

- Add ``libpqxx.lib`` to *Configuration Properties*, *Linker*, *Input*,
  *Additional Dependencies*.
- Add ``\\src\\libpqxx-2.6.9\\lib`` to *Configuration Properties*, *Linker*,
  *General*, *Additional Library Directories*.

Issues
======

Struct Member Alignment
-----------------------

This is caused by the Visual C++, *Configuration Properties*, *C/C++*,
*Code Generation*, *Struct Member Alignment* being set to 1 byte.
Setting it back to default solves the issue.  I guess this is because
``libpqxx`` is not compiled with structure alignment set to 1 byte.

If your project must be compiled using the ``/Zp1`` option (Struct Member
Alignment 1 Byte) then modify the make file - ``libpqxx.mak`` - add ``/Zp1``
to each ``CPP_EXTRAS`` line e.g.

::

  CPP_EXTRAS=/MT /Zp1 /D "_WINDOWS" /D "_USRDLL" /D "NDEBUG"
  CPP_EXTRAS=/MTd /Zp1 /Gm /ZI /Od /D "_WINDOWS" /D "_USRDLL" /D "_DEBUG" /GZ
  CPP_EXTRAS=/MT /Zp1 /D "_LIB" /D "NDEBUG"
  CPP_EXTRAS=/MTd /Zp1 /Gm /ZI /Od /D "_LIB" /D "_DEBUG" /GZ

__imp__select
-------------

http://comments.gmane.org/gmane.comp.db.postgresql.lipqxx/564

*the problem is fixed just by linking in ws2_32.lib as you suggested*...

::

  LNK2019: unresolved external symbol __imp__select@20 referenced in function __catch$?check_result@connection_base@pqxx@@AAEXABVresult@2@@Z$0

From the ``.vcproj`` project file:

::

  AdditionalDependencies="... ws2_32.lib"

invalid or corrupt file
-----------------------

::

  Error  16  fatal error LNK1107: invalid or corrupt file: cannot read at 0x290
  c:\src\libpqxx-2.6.9\lib\libpqxx.dll  1

I resolved this issue by linking to ``libpqxx.lib`` rather than
``libpqxx.dll``.

