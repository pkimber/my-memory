diff
****

Links
=====

- http://colordiff.sourceforge.net/
- `Introduction: Using diff and patch (tutorial)`_

Binary
======

::

  xxd b1 > b1.hex
  xxd b2 > b2.hex

  diff b1.hex b2.hex

``xxd`` does a hex dump of the binary file.

Colour
======

Just use ``colordiff`` in place of ``diff``...

Folder
======

From `How to get diff between all files inside 2 folders`_::

  diff -ENwbur repos1/ repos2/

Recursive
=========

Recursive diff.

::

  diff -r /home/patrick/temp/from/ /home/patrick/temp/to/


.. _`How to get diff between all files inside 2 folders`: https://stackoverflow.com/questions/5874090/how-to-get-diff-between-all-files-inside-2-folders-that-are-on-the-web
.. _`Introduction: Using diff and patch (tutorial)`: http://www.linuxtutorialblog.com/post/introduction-using-diff-and-patch-tutorial
