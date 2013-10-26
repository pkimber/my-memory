File
****

Filename - Replace Invalid Characters
=====================================

- `List of Invalid Keyboard Characters for a Windows XP filename`_
- `A list of the default invalid file name characters`_
- `Regex expression to replace invalid filename characters`_.

  Replace invalid (and a few other characters from a file name) with an
  underline:

  ::

    String cleanFilename(final String fileName) {
        return fileName.replaceAll("[\\\\/:*%?\"<>|&\\]=]", "_");
    }


.. _`List of Invalid Keyboard Characters for a Windows XP filename`: http://jbknet.blogspot.com/2005/11/list-of-invalid-keyboard-characters.html
.. _`A list of the default invalid file name characters`: http://www.oracle.com/technology/products/ias/toplink/doc/1013/main/b13698/oracle/toplink/xml/DefaultFileNameNormalizer.html#DEFAULT_INVALID_FILE_NAME_CHARACTERS
.. _`Regex expression to replace invalid filename characters`: http://bytes.com/forum/thread239679.html

