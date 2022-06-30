.NET Assemblies
***************

Links
=====

- `.NET assembly from Wikipedia`_
- `The Secrets of Strong Naming`_

Definitions
===========

+------+--------------------------+-----------------------------------------------------------+
| GAC  | Global Assembly Cache    | A machine-wide .NET assemblies cache for                  |
|      |                          | Microsoft's CLR platform.                                 |
+------+--------------------------+-----------------------------------------------------------+
| PE   | Portable executable file | In the Microsoft Windows implementation of .NET, an       |
|      |                          | assembly is a PE file. There are two types, process       |
|      |                          | assemblies (EXE) and library assemblies (DLL)             |
+------+--------------------------+-----------------------------------------------------------+
|      | Private assembly         | This means that the assembly can only exist in the        |
|      |                          | application folder, or in a subfolder, and hence it is    |
|      |                          | called a private assembly because it can only be used by  |
|      |                          | a specific application.                                   |
+------+--------------------------+-----------------------------------------------------------+

Name
====

The name of an assembly consists of four parts:

+---+------------------+--------------------------------------------------------------------------+
| 1 | Short name       | On Windows this is the name of the PE file without the extension.        |
+---+------------------+--------------------------------------------------------------------------+
| 2 | Culture          | In general, library and process assemblies should be culture neutral     |
+---+------------------+--------------------------------------------------------------------------+
| 3 | Version          | This is a dotted number made up for 4 values - major, minor, build and   |
|   |                  | revision.  The version is only used if the assembly has a strong name.   |
+---+------------------+--------------------------------------------------------------------------+
| 4 | Public key token | This is a 64-bit hash of the public key which corresponds to the private |
|   |                  | key used to sign the assembly.  A signed assembly is said to have a      |
|   |                  | strong name.                                                             |
+---+------------------+--------------------------------------------------------------------------+

Global Assembly Cache
=====================

List
----

List the global assembly cache::

  "c:\Program Files\Microsoft Visual Studio .NET 2003\SDK\v1.1\Bin\gacutil.exe" /l

Remove
------

To remove an assembly from the Global Assembly Cache::

  "c:\Program Files\Microsoft Visual Studio .NET 2003\SDK\v1.1\Bin\gacutil.exe" /u CSObjects


.. _`.NET assembly from Wikipedia`: http://en.wikipedia.org/wiki/.NET_assemblies
.. _`The Secrets of Strong Naming`: http://www.ondotnet.com/pub/a/dotnet/2003/04/28/strongnaming.html
