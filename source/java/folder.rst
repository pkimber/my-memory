Folders and Directories
***********************

Collections
===========

Note: A ``File`` object does not compare as expected when used as a key in a
map.  Better to convert the folder into a *normalised* string format before
using as a key.  For sample code:

::

  ../../misc/howto/java/FolderCompare.java.txt

Create a folder/directory...
============================

::

  String newFolderPath = "C:\\";
  String newFolderName = "MyFolder";
  String spoonFeeding = newFolderPath + newFolderName;
  File f = new File(spoonFeeding);
  f.mkDir();

From http://forum.java.sun.com/thread.jspa?threadID=516569&messageID=2462611

Check if a folder/directory exists:
===================================

::

  // From com.mycompany.lucene.RepositoryWriter
  private void checkIndexDoesNotExist(final File repositoryFolder) throws MyException {
      if (repositoryFolder.isDirectory()) {
          throw new MyException("Index already exists [" + repositoryFolder.getAbsolutePath() + "]");
      }
  }

Create a Folder
===============

::

  void createFolder(final File folder) {
      if (!folder.isDirectory()) {
          folder.mkdir();
      }
  }

Create the folder and any nonexistent parent directories.
---------------------------------------------------------

::

  if (!new File(folder).mkdirs()) {
      throw new MyException("Cannot create folder [" + folder + "]");
  }

Delete a Folder
===============

- *Delete Folder* in Apache, Commons IO: :doc:`../apache/commons-io`.
- `Deleting a Directory`_

  ::

    // Deletes all files and subdirectories under dir.
    // Returns true if all deletions were successful.
    // If a deletion fails, the method stops attempting to delete and returns false.
    public static boolean deleteDir(File dir) {
        if (dir.isDirectory()) {
            String[] children = dir.list();
            for (int i=0; i<children.length; i++) {
                boolean success = deleteDir(new File(dir, children[i]));
                if (!success) {
                    return false;
                }
            }
        }

        // The directory is now empty so delete it
        return dir.delete();
    }


.. _`Deleting a Directory`: http://javaalmanac.com/egs/java.io/DeleteDir.html

