Command Line
************

Setup
=====

Add 7-Zip to the path:

::

  C:\Program Files\7-Zip

Add
===

Add files to an archive:

::

  cd folder-to-archive
  7z a archive-name

or:

::

  7z a -tzip my-zip-file.zip *
  7z a -r -ttar pom.tar pom.xml

Extract
=======

Extract with full paths:

::

  7z x \projects\my-zip-file.zip

Exclude a File
--------------

Do not extract the file called ``LICENSE``:

::

  7z x \projects\my-zip-file.zip -x!LICENSE

Assume *Yes* on all queries:
----------------------------

::

  7z x \projects\my-zip-file.zip -y

Overwrite mode
--------------

Overwrite all existing files without prompt:

::

  7z x -aoa \projects\my-zip-file.zip

List
====

::

  7z l \projects\my-zip-file.zip
