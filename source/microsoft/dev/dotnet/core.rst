.NET Core
*********

- Also see :doc:`../../../csharp/index`
- Also see :doc:`../visual-studio/dotnet`
- `.NET Core and .NET Standard: What Is the Difference?`_
- `.NET Standard versions`_
- `Compatibility of dynamically loaded assemblies`_
- `Demystifying .NET Core and .NET Standard`_

From `.NET Core and .NET Standard: What Is the Difference?`_:

  .NET Standard is an API specification that defines, for a given version,
  what Base Class Libraries must be implemented.

  .NET Core is a managed framework that is optimized for building console,
  cloud, ASP.NET Core, and UWP applications. It provides an implementation
  of .NET Standard for the Base Class Libraries.

Getting Started (09/02/2021)
============================

Download and install *.NET 5.0 (Current)* from
https://dotnet.microsoft.com/download
(.NET 5 also supports some major sub-framework for desktop development like
Entity Framework, GDI+, LINQ, and ADO.Net)

Application
===========

Create a new console application::

  dotnet new console -o TestEntityFramework
  cd TestEntityFramework

Install EntityFramework::

  dotnet tool install --global dotnet-ef
  dotnet add package Microsoft.EntityFrameworkCore.Design
  # check
  dotnet ef

Database - Reverse Engineering
==============================

`Reverse engineering`_ is the process of scaffolding entity type classes and
a ``DbContext`` class based on a database schema.

From `MySQL, Scaffolding an Existing Database in EF Core`_::

  dotnet add package MySql.EntityFrameworkCore --version 5.0.0-m8.0.23
  dotnet ef dbcontext scaffold "server=127.0.0.1;uid=root;database=FMS" MySql.EntityFrameworkCore -o sakila -f

Check the (e.g. ``sakila``) folder which contains all the tables mapped to
entities and the ``Context.cs`` file


.. _`.NET Core and .NET Standard: What Is the Difference?`: https://www.infoq.com/news/2017/10/dotnet-core-standard-difference/
.. _`.NET Standard versions`: https://docs.microsoft.com/en-us/dotnet/standard/net-standard?tabs=net-standard-1-0
.. _`Compatibility of dynamically loaded assemblies`: https://stackoverflow.com/questions/59444690/compatibility-of-dynamically-loaded-assemblies
.. _`Demystifying .NET Core and .NET Standard`: https://docs.microsoft.com/en-us/archive/msdn-magazine/2017/september/net-standard-demystifying-net-core-and-net-standard
.. _`MySQL, Scaffolding an Existing Database in EF Core`: https://dev.mysql.com/doc/connector-net/en/connector-net-entityframework-core-scaffold-example.html
.. _`Reverse engineering`: https://docs.microsoft.com/en-us/ef/core/managing-schemas/scaffolding
