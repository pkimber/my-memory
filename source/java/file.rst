Files
*****

Classpath
=========

To load a file from the classpath: :doc:`resource-in-jar`.

Collections
===========

Note: A ``File`` object does not compare as expected when used as a key in a
map.  Better to convert the file into a *normalised* string format before using
as a key.  For sample code:

::

  ../../misc/howto/java/FolderCompare.java.txt

For the same issue in C# see :doc:`../csharp/folders`.

Concatenate Folder and File
===========================

Make sure you include a slash at the start of the file (``/src/site/apt/``):

::

  File projectRoot = new File("/home/patrick/documents/my-memory");
  File aptFolder = new File(projectRoot + "/src/site/apt/");

Copy File
=========

(Also see *Read File* below)...

Is much easier to use the ``copyFile`` method from the
Commons IO, Apache, Jakarta Project: :doc:`../apache/commons-io`.

If you don't want to use Commons IO, (we think) the file has to be copied one
byte at a time:

::

  import java.io.*;

  public class Copy {
      public static void main(String[] args) throws IOException {
          File inputFile = new File("farrago.txt");
          File outputFile = new File("outagain.txt");

          FileReader in = new FileReader(inputFile);
          FileWriter out = new FileWriter(outputFile);
          int c;

          while ((c = in.read()) != -1)
             out.write(c);

          in.close();
          out.close();
      }
  }

Invalid Characters
==================

Code Snippets, Filename - Replace Invalid Characters: :doc:`snippets/file`.

Iterate through files in a folder...
====================================

Alternatively use Apache Commons Directory Walker: :doc:`../apache/commons-io`.

::

  File [] files  = new File(SITES_PATH).listFiles();

  for (int i = 0; i < files.length; i++) {
      File f = files[i];
      if (f.isDirectory()) {
          logger.info("addSites() " + f.toString());
      }
  }

If you want to filter the list of files:

::

  private void listFiles(final File folder) {
      FilenameFilter filter = new FilenameFilter() {
          public boolean accept(final File dir, final String name) {
              return name.toLowerCase().endsWith(".jar");
          }
      };
      String [] fileList = folder.list(filter);
      for (int i = 0; i < fileList.length; i++) {
          logger.info("Found [" + fileList[i] + "]");
          ...
          }

**Note:**

- ``list`` returns a list of strings with the file name.
- ``listFiles`` returns a list of files.
- The ``accept`` method appears to have two signatures:

  ::

    public boolean accept(final File file) {

Move File
=========

Note: Also see Commons IO, FileUtils, Move File: :doc:`../apache/commons-io`.

http://javaalmanac.com/egs/java.io/MoveFile.html

::

  File toFile = new File(...
  boolean success = fromFile.renameTo(toFile);
  if (!success) {
      // File was not successfully moved
  }

Read File
=========

Note: See Commons IO, FileUtils, Read a File: :doc:`../apache/commons-io`.

http://www.devdaily.com/java/edu/pj/pj010017/index.shtml

::

  File inputFile = new File("in.txt");
  FileReader fr = new FileReader(inputFile);
  BufferedReader br = new BufferedReader(fr);
  String line;
  while ((line = br.readLine()) != null) {
      System.out.println(line);
  }

http://java.sun.com/j2se/1.4.2/docs/api/java/io/BufferedReader.html

It is advisable to wrap a ``BufferedReader`` around any Reader whose ``read()``
operations may be costly, such as ``FileReaders`` and ``InputStreamReaders``.

Temporary File
==============

See JavaDocs for ``createTempFile`` in java.io.File_

Example from `The Java Developers Almanac 1.4 - Creating a Temporary File`_

::

  try {
      // Create temp file.
      File temp = File.createTempFile("prefix", ".suffix");
      // or...
      // File temp = File.createTempFile("prefix", ".suffix", "folder");

      // Delete temp file when program exits (use with care)!
      // temp.deleteOnExit();

      // Write to temp file
  } catch (IOException e) {
  }

Write File
==========

Example from `The Java Developers Almanac 1.4 - Writing to a File`_

::

  BufferedWriter out = null;
  try {
      out = new BufferedWriter(new FileWriter("outfilename"));
      out.write("aString");
  } catch (IOException e) {
  } finally {
      try {
          if (out != null) {
              out.close();
          }
      } catch (IOException e) {
      }
  }


.. _`java.io.File`: http://java.sun.com/j2se/1.4.2/docs/api/java/io/File.html
.. _`The Java Developers Almanac 1.4 - Creating a Temporary File`: http://www.exampledepot.com/egs/java.io/CreateTempFile.html
.. _`The Java Developers Almanac 1.4 - Writing to a File`: http://www.exampledepot.com/egs/java.io/WriteToFile.html

