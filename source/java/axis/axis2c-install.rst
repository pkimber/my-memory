Axis2/C - Installation
**********************

Links
=====

- http://ws.apache.org/axis2/c/
- `Mailing List - User`_

Download
========

- Download ``axis2c-bin-1.1.0-win32.zip`` from
  http://ws.apache.org/axis2/c/.
- Download ``libxml2-2.6.27.win32`` from http://www.xmlsoft.org.  Actually
  had to download ``libxml2-2.6.27.win32.zip`` from
  `SourceForge, dia Win32 Installer`_ download site.
- Download ``iconv-1.9.1.win32`` from
  http://www.gnu.org/software/libiconv/.
  Actually downloaded ``libiconv-1.9.1.bin.woe32.zip`` from
  ftp://mirrors.usc.edu/pub/gnu/libiconv
- Download ``zlib-1.2.3.win32`` from http://www.gzip.org/zlib/.  Acually
  downloaded ``zlib123-dll.zip``.

Install
=======

Extract ``axis2c-bin-1.1.0-win32.zip``.  I installed to:

::

  C:\bin\axis2c-bin-1.1.0-win32\

- Extract ``libxml2.dll`` from the ``bin`` folder of
  ``libxml2-2.6.27.win32.zip``.

- Extract ``iconv.dll`` from the ``lib`` folder of
  ``libiconv-1.9.1.bin.woe32.zip``.

- Extract ``zlib1.dll`` from ``zlib123-dll.zip``.

Copy ``libxml2.dll``, ``iconv.dll`` and ``zlib1.dll`` to the ``lib`` folder of
the ``axis2c`` installation:

::

  C:\bin\axis2c-bin-1.1.0-win32\lib\

Set a couple of environment variables:

::

  set AXIS2C_HOME=C:\bin\axis2c-bin-1.1.0-win32
  set PATH=%PATH%;%AXIS2C_HOME%\lib

Start
=====

Start the server:

::

  cd C:\bin\axis2c-bin-1.1.0-win32\bin\
  axis2_http_server.exe

Test
====

- To list available services:

  http://localhost:9090/axis2/services

- To run a sample client (from a new command window):

  ::

    set AXIS2C_HOME=C:\bin\axis2c-bin-1.1.0-win32
    set PATH=%PATH%;%AXIS2C_HOME%\lib
    cd C:\bin\axis2c-bin-1.1.0-win32\bin\samples\
    math


.. _`Mailing List - User`: http://marc.theaimsgroup.com/?l=axis-c-user&r=1&w=2
.. _`SourceForge, dia Win32 Installer`: http://sourceforge.net/project/showfiles.php?group_id=16768&package_id=107734

