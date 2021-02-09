.NET Core
*********

- Also see :doc:`../../../csharp/index`

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


.. _`Reverse engineering`: https://docs.microsoft.com/en-us/ef/core/managing-schemas/scaffolding
.. _`MySQL, Scaffolding an Existing Database in EF Core`: https://dev.mysql.com/doc/connector-net/en/connector-net-entityframework-core-scaffold-example.html
