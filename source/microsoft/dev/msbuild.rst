MSBuild
*******

Links
=====

- `MSBuild Reference`_
- `MSBuild Wiki`_
- `Practical .NET2 and C#2: An introduction to MSBuild`_

Plugins
-------

- `MSBuild Extras - Toolkit for .NET 1.1 MSBee`_

Install
=======

I have installed the .NET Framework - SDK, :doc:`../dotnet/sdk`, which installs
a shortcut to an *SDK Command Prompt*.  Running ``msbuild`` from this prompt
runs the tool.

Getting Started
===============

A very simple project file:

::

  <Project DefaultTargets = "Compile" xmlns="http://schemas.microsoft.com/developer/msbuild/2003" >
      <PropertyGroup>
          <!-- Set the application name as a property -->
          <appname>HelloWorldCS</appname>
      </PropertyGroup>

      <!-- Specify the inputs by type and file name -->
      <ItemGroup>
          <CSFile Include = "consolehwcs1.cs"/>
      </ItemGroup>

      <Target Name = "Compile">
          <!-- Run the Visual C# compilation using input files of type CSFile -->
          <CSC Sources = "@(CSFile)" OutputAssembly = "$(appname).exe">
              <!-- Set the OutputAssembly attribute of the CSC task to the name of the executable file that is created -->
              <Output TaskParameter = "OutputAssembly" ItemName = "EXEFile" />
          </CSC>

          <!-- Log the file name of the output file -->
          <Message Text="The output file is @(EXEFile)"/>
      </Target>
  </Project>

To build this project (which compiles ``consolehwcs1.cs`` into an ``exe``):

::

  msbuild

All files
=========

To build all ``cs`` files in the ``src/main/java/`` folder:

::

  <Project xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
      <PropertyGroup>
          <OutputPath>.\target</OutputPath>
      </PropertyGroup>
      <ItemGroup>
          <cs_source Include = "src\main\java\**\*.cs"/>
      </ItemGroup>
      <Target Name="Compile">
          <MakeDir Directories = "${OutputPath}"/>
          <Csc Sources = "@(cs_source)"
              TargetType = "module"
              OutputAssembly = "${OutputPath}\lucene-app-dotnot.netmodule"/>
      </Target>
  </Project>

Note: The ``cs_source`` array is accessed using the ``@`` symbol and normal
brackets (not curly brackets).

Library
=======

To create a ``dll`` file:

::

  <Project DefaultTargets = "Compile" xmlns="http://schemas.microsoft.com/developer/msbuild/2003" >
      <PropertyGroup>
          <!-- Set the application name as a property -->
          <appname>Cow</appname>
      </PropertyGroup>

      <!-- Specify the inputs by type and file name -->
      <ItemGroup>
          <CSFile Include = "cow.cs"/>
      </ItemGroup>

      <Target Name = "Compile">
          <!-- Run the Visual C# compilation using input files of type CSFile -->
          <CSC
              Sources = "@(CSFile)"
              TargetType = "library">

              <!-- Set the OutputAssembly attribute of the CSC task to the name of the executable file that is created -->
              <Output TaskParameter = "OutputAssembly" ItemName = "EXEFile" />
          </CSC>

          <!-- Log the file name of the output file -->
          <Message Text="The output file is @(EXEFile)"/>
      </Target>
  </Project>

Note, the ``TargetType`` is set to ``library``.

References
==========

To include references:

::

  <Project xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
      <PropertyGroup>
          <OutputPath>target</OutputPath>
      </PropertyGroup>
      <ItemGroup>
          <cs_source
              Include = "src\main\java\**\*.cs"
              Exclude = "
                  **\JavaBuiltInRTFHandler.cs;
                  **\NekoHTMLHandler.cs;
                  **\PDFBoxPDFHandler.cs;
                  **\POIExcelDocHandler.cs;
                  **\POIPowerPointHandler.cs;
                  **\POIWordDocHandler.cs
                  "/>
      </ItemGroup>

      <ItemGroup>
          <Reference Include="log4net.dll"/>
          <Reference Include="Lucene.Net.dll"/>
          <Reference Include="LuceneIndexAccess.dll"/>
          <Reference Include="Snowball.Net.dll"/>
      </ItemGroup>

      <Target Name="Compile">
          <MakeDir Directories = "$(OutputPath)"/>
          <Csc Sources = "@(cs_source)"
              References = "@(Reference)"
              TargetType = "library"
              OutputAssembly = "$(OutputPath)\lucene-app-dotnet.dll"
              />
      </Target>
  </Project>

Note the ``References = "@(Reference)"`` section in the ``Csc`` task.

When a project like this is loaded into a Microsoft IDE, the references cause
an error like this:

::

  Warning	1	The referenced component 'log4net.dll' could not be found.

I can't solve this.  I have tried setting the ``HintPath`` and the
``ReferencePath`` but it makes no difference.  You can still browse the objects
so I guess it might be ok for now.

.NET 1.1
========

To target .NET 1.1 using MSBuild:

- Install the .NET 1.1 SDK.
- Download *MSBee* (see plugin links above).  I installed to:

  ::

    C:\Program Files\MSBuild\MSBee\

This installs a new *Power Toys for Visual Studio* program group.  This group
contains a manual for *MSBee*.



.. _`MSBuild Reference`: http://msdn2.microsoft.com/library/0k6kkbsd.aspx
.. _`MSBuild Wiki`: http://channel9.msdn.com/wiki/default.aspx/MSBuild.HomePage
.. _`Practical .NET2 and C#2: An introduction to MSBuild`: http://www.codeproject.com/books/msbuild.asp
.. _`MSBuild Extras - Toolkit for .NET 1.1 MSBee`: http://www.codeplex.com/Wiki/View.aspx?ProjectName=MSBee&title=Home

