Files
*****

.. highlight:: bash

Duplicate
=========

To remove duplicate files e.g. photos::

  apt-get install fdupes

Find and remove duplicate files::

  fdupes -rdN .

.. warning:: The ``d`` option will **delete** the duplicate files.

===== ========================================================================
r     option makes ``fdupes`` search for files recursively.
d     option makes ``fdupes`` delete duplicates.
N     option, when used together with ``d``, preserve the first file in each
      set of duplicates and delete the others **without** prompting the user.
===== ========================================================================

To move photos into folders::

  sudo apt-get install libimage-exiftool-perl
  exiftool "-filename=%f%c.%e" '-Directory<CreateDate' -d %Y/%Y-%m -r .

.. note:: The ``%e`` should add a copy number if ``exiftool`` finds a duplicate
          filename.

Remove olde Windows ``ini`` files::

  find . -type f -name "Thumbs.db" -exec rm -f {} \;
  find . -type f -name "Picasa.ini" -exec rm -f {} \;

To remove all empty directories under the current directory::

  find . -type d -empty -delete

File Type
=========

- `Don't Judge a File by its Filename`_
- `Linux vs Windows: file names and file type associations`_

::

  $ man file
  ...file - determine file type
  ...
  $ file temp/myfile.zip
  temp/myfile.zip: Zip archive data, at least v1.0 to extract
  $ file temp/logs/logger.log
  temp/logs/logger.log: ASCII English text
  $

Script
======

*Shebang (Unix), the #! syntax used in scripts to indicate an interpreter for
execution*.

`The Whole Shebang, or What's in a Script`_

First, the file needs to specify which type of shell environment should be
created to execute the shell script's commands.  This is done as a special
notation on the first line of the shell script.  The line begins with a number
sign (#), then an exclamation point (!), followed by the exact executable
shell program on this computer's filesystem.

Below, this new line is inserted into our sample script file::

  #!/bin/bash
  date

python
------

::

  #!/usr/bin/env python


.. _`Don't Judge a File by its Filename`: http://www.halley.cc/ed/linux/newcomer/filename.html
.. _`Linux vs Windows: file names and file type associations`: http://www.murga-linux.com/puppy/viewtopic.php?t=4285&sid=d68a1dad1d08b00fa159f80e9832838d
.. _`The Whole Shebang, or What's in a Script`: http://www.halley.cc/ed/linux/newcomer/shebang.html
