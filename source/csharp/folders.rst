Folders
*******

Collections
===========

Note: A ``DirectoryInfo`` object does not compare as expected when used as a
key in a map.  Better to convert the folder into a *normalised* string format
before using as a key.

Sample code:

::

  ../../misc/howto/csharp/FolderCompare.cs.txt

Also see the Java :doc:`../java/file` and :doc:`../java/folder` notes for the
same issue.

Sample
======

::

  using System.IO;

  DirectoryInfo folder = new DirectoryInfo("temp-folder-name");
  Console.Out.WriteLine(folder.FullName.ToString());
  if (!folder.Exists)
  {
      folder.Create();
  }

Issues
======

Equals
------

In .NET 1, two directories pointing to the same folder are not equal:

- This code shows a number of surprising results...

  ::

    ../../misc/howto/csharp/DirectoryInfoTest.cs.txt

- I wrote this helper class which can be used to compare two ``DirectoryInfo``
  objects.

  ::

    ../../misc/howto/csharp/DirectoryHelper.cs.txt

- The associated unit test for the ``DirectoryHelper`` class.

  ::

    ../../misc/howto/csharp/DirectoryHelperTest.cs.txt

**Note**: I have not tried to compare ``DirectoryInfo`` objects in .NET 2...

