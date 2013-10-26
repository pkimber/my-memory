ZIP
***

http://javaalmanac.com/egs/java.util.zip/CreateZip.html

::

  /** Buffer size. */
  static final int BUFFER_SIZE = 1024;

  /**
   * Zip the list of files...
   *
   * @param archiveFile Add the files to this archive.
   * @param fileList The list of files to add to the zip.
   * @param folderToRemove Remove this section of the path from the filename.
   * @throws MyException If the zip file cannot be created.
   */
  public void zip(final File archiveFile, final List fileList, final File folderToRemove)
      throws MyException {
      // Create a buffer for reading the files
      byte[] buf = new byte[BUFFER_SIZE];
      try {
          // Create the zip file
          ZipOutputStream out = new ZipOutputStream(new FileOutputStream(archiveFile));
          for (Iterator i = fileList.iterator(); i.hasNext();) {
              File file = (File) i.next();
              FileInputStream in = new FileInputStream(file);
              // Add zip entry to output stream.
              out.putNextEntry(new ZipEntry(getArchivePath(folderToRemove, file)));
              // Transfer bytes from the file to the ZIP file
              int len;
              while ((len = in.read(buf)) > 0) {
                  out.write(buf, 0, len);
              }
              // Complete the entry
              out.closeEntry();
              in.close();
          }
          // Close the zip file
          out.close();
      } catch (IOException e) {
          throw new MyException("Cannot create zip file [" + archiveFile.getAbsoluteFile() + "]");
      }
  }

  /**
   * Get the file name as it should appear in the archive.
   *
   * @param folderToRemove Remove this section of the path from the filename.
   * @param file Get the archive path for this file.
   * @return The file name as it should appear in the archive.
   * @throws MyException If the file is not on the path.
   */
  private String getArchivePath(final File folderToRemove, final File file) throws MyException {
      String remove = folderToRemove.getAbsolutePath();
      String fileName = file.getAbsoluteFile().toString();
      if (remove.length() >= fileName.length()) {
          throw new MyException("The path to remove [" + remove
              + "] is longer than the file [" + fileName + "]");
      }
      if (fileName.indexOf(remove) != 0) {
          throw new MyException("The path to remove [" + remove
              + "] does not match the start of the file name [" + fileName + "]");
      }
      String result = fileName.substring(remove.length() + 1);
      logger.info("getArchivePath() [" + result + "]");
      return result;
  }

