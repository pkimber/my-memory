Commons IO
**********

Links
=====

- `Commons IO`_
- `artima - Forum Entry - Apache Releases New Version of Commons IO`_
- `My Top List of Java Tools`_

Maven 2 Dependency
==================

::

  <dependency>
    <groupId>commons-io</groupId>
    <artifactId>commons-io</artifactId>
    <version>1.4</version>
  </dependency>

Directory Walker
================

Sample project in Subversion: sample-commons-directory-walker_

Note: Also see *FileUtils*, *List Files* below.

FilenameUtils
=============

Extension
---------

getExtension_

::

  import org.apache.commons.io.FilenameUtils;
  String extension = FilenameUtils.getExtension(file.getName());

Name
----

getName_
Gets the name minus the path from a full filename.

::

  import org.apache.commons.io.FilenameUtils;
  final String fileName = FilenameUtils.getName(file.getAbsolutePath());

getBaseName_
Gets the base name, minus the full path and extension, from a full filename.

::

  import org.apache.commons.io.FilenameUtils;
  final String name = FilenameUtils.getBaseName(file.getAbsolutePath());

FileUtils
=========

Import:

::

  import org.apache.commons.io.FileUtils;

Copy Folder (and it's contents)
-------------------------------

``copyDirectory``

copyDirectory_

::

  import org.apache.commons.io.FileUtils;

  FileUtils.copyDirectory(sourceFolder, destinationFolder);

**Note**: To ignore svn folders:

::

  import org.apache.commons.io.FileUtils;
  import org.apache.commons.io.filefilter.FileFilterUtils;

  FileUtils.copyDirectory(configFolder, applicationConfigFolder,
      FileFilterUtils.makeSVNAware(null));

Copy File
---------

``copyFile``

copyFile_

::

  FileUtils.copyFile(sourceFile, destinationFile);

Copy File to Folder
-------------------

``copyFileToDirectory``

copyFileToDirectory_

::

  FileUtils.copyFileToDirectory(fromFile, toFolder);

Copy Folder
-----------

::

  // copy one folder and its contents into another
  FileUtils.copyDirectoryToDirectory(file1, file2);

Delete Folder
-------------

deleteDirectory_

::

  FileUtils.deleteDirectory(folder);

Line Iterator
-------------

::

  BufferedReader reader = null;
  try {
      reader = new BufferedReader(new FileReader(file));
      LineIterator it = IOUtils.lineIterator(reader);
      String line;
      while (it.hasNext()) {
          line = it.nextLine();
          }
      }
  } finally {
      IOUtils.closeQuietly(reader);
  }

List Files
----------

::

  // return the list of xml and text files in the specified folder and any subfolders
  Collection<File> c1 = FileUtils.listFiles(file1, { "xml", "txt" }, true);

Note: I haven't tested this.

Move File
---------

moveFileToDirectory_:

::

  final File moveTo = new File(file.getParent(), "done");
  FileUtils.moveFileToDirectory(file, moveTo, true);

``true`` tells the ``moveFileToDirectory`` to create the destination
folder.

Read a File
-----------

::

  import org.apache.commons.io.FileUtils;
  return FileUtils.readFileToString(new File("file_name.txt"));

Touch
-----

::

  import org.apache.commons.io.FileUtils;
  FileUtils.touch(new File(fileName));

IOUtils
=======

IOUtils_

closeQuietly
------------

Close a stream ignoring nulls and exceptions:

::

  InputStream is = null;
  try {
      is = new BufferedInputStream(new FileInputStream(new File(resource
              .getPath())));
  } finally {
      IOUtils.closeQuietly(is);
  }

readLines
---------

readLines_.
Get the contents of a file as a list of Strings, one entry per line:

::

  BufferedReader in = null;
  try {
      in = new BufferedReader(new FileReader(fileName));
      final List<String> result = IOUtils.readLines(in);
      return result;
  } finally {
      IOUtils.closeQuietly(in);
  }


.. _`Commons IO`: http://jakarta.apache.org/commons/io/
.. _`artima - Forum Entry - Apache Releases New Version of Commons IO`: http://www.artima.com/forums/flat.jsp?forum=276&thread=196336
.. _`My Top List of Java Tools`: http://java.dzone.com/articles/my-top-list-java-tools
.. _sample-commons-directory-walker: http://toybox/hg/sample/file/tip/java/sample-commons-directory-walker
.. _getExtension: http://jakarta.apache.org/commons/io/api-1.3/org/apache/commons/io/FilenameUtils.html#getExtension(java.lang.String)
.. _getName: http://commons.apache.org/io/api-1.3/org/apache/commons/io/FilenameUtils.html#getName(java.lang.String)
.. _getBaseName: http://commons.apache.org/io/api-1.3/org/apache/commons/io/FilenameUtils.html#getBaseName(java.lang.String)
.. _copyDirectory: http://jakarta.apache.org/commons/io/api-release/org/apache/commons/io/FileUtils.html#copyDirectory(java.io.File,%20java.io.File)
.. _copyFile: http://jakarta.apache.org/commons/io/api-release/org/apache/commons/io/FileUtils.html#copyFile(java.io.File,%20java.io.File)
.. _copyFileToDirectory: http://jakarta.apache.org/commons/io/api-release/org/apache/commons/io/FileUtils.html#copyFileToDirectory(java.io.File,%20java.io.File)
.. _deleteDirectory: http://jakarta.apache.org/commons/io/api-release/org/apache/commons/io/FileUtils.html#deleteDirectory(java.io.File)
.. _moveFileToDirectory: {http://commons.apache.org/io/api-release/org/apache/commons/io/FileUtils.html#moveFileToDirectory(java.io.File, java.io.File, boolean)
.. _IOUtils: http://commons.apache.org/io/api-release/org/apache/commons/io/IOUtils.html
.. _readLines: http://commons.apache.org/io/api-release/org/apache/commons/io/IOUtils.html#readLines(java.io.Reader)

