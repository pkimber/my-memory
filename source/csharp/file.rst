Files
*****

Collections
===========

Note: A ``FileInfo`` object probably does not compare as expected when used as
a key in a map.  For more information see the :doc:`folders` on collections.

Create
======

**Note**: Make sure you ``Close()`` the file after creating it:

::

  using System;
  using System.IO;

  public class DeleteTest
  {
      public static void Main()
      {
          // Create a reference to a file.
          FileInfo fi = new FileInfo("temp.txt");
          // Actually create the file.
          FileStream fs = fi.Create();
          // Modify the file as required, and then close the file.
          fs.Close();
          // Delete the file.
          fi.Delete();
      }
  }

FileStream
==========

::

  using System.IO;

  FileInfo fi = new FileInfo(fileName);
  if(fi.Exists)
  {
      FileStream fs = fi.OpenRead();

      byte[] ByteArray = new byte[fs.Length];
      int nBytesRead = fs.Read(ByteArray, 0, ByteArray.Length);

      fs.Close();
  }

Text File
=========

Read
----

::

  using System.IO;

  String line;
  StreamReader f = new StreamReader("test.txt");
  while((line = f.ReadLine()) != null)
      Console.WriteLine(line);
  f.Close();

Write
-----

::

  TextWriter writer = null;
  try
  {
      writer = new StreamWriter(fileName);
      writer.Write("Patrick Kimber");
  }
  finally
  {
      if (writer != null)
      {
          writer.Close();
      }
  }

Issues
======

Equals
------

See the doc:`folders`.  The ``Equals`` issues are likely to affect the
``FileInfo`` object as well.

