CSharp
******

Links
=====

- http://maven-csharp.javaforge.com/
- **Have a look at this new project!**

  - http://incubator.apache.org/nmaven/

Prerequisites
=============

Download the .NET Framework - SDK, :doc:`../dotnet/sdk`

Make sure the C# compiler is on the ``PATH``.  I added the following to my
batch file:

::

  call "C:\Program Files\Microsoft Visual Studio 8\SDK\v2.0\Bin\sdkvars.bat"

Install
=======

Checkout from Subversion:
http://svn.javaforge.com/svn/maven-csharp/trunk

I had a few problems building the plugins so start off by building the
``archetype`` I want:

::

  cd plugins/maven-archetype-dotnetlibrary
  mvn install

  cd plugins/maven-csharp-lifecycle-plugin
  mvn install

Then build the rest by changing back to the root folder:

::

  mvn install

Getting Started
===============

To create a C# library project with the group ID, ``your-group-id`` and the
project name, ``your-dotnet-library``:

::

  mvn archetype:create -DarchetypeGroupId=org.apache.maven.archetypes -DarchetypeArtifactId=maven-archetype-dotnetlibrary -DarchetypeVersion=1.0.RC6-SNAPSHOT -DgroupId=your.group.id -DartifactId=your-dotnet-library

To build this project:

::

  mvn package

I had to update the version for the lifecycle and nunit plugins:

::

  <plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-csharp-lifecycle-plugin</artifactId>
    <version>1.0.RC6-SNAPSHOT</version>
    <extensions>true</extensions>
  </plugin>

  <plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-nunit-plugin</artifactId>
    <version>1.0.RC6-SNAPSHOT</version>
  </plugin>



