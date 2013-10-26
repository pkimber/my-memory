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

Recursive
=========

Recursive diff.

::

  diff -r /home/patrick/temp/from/ /home/patrick/temp/to/


.. _`Introduction: Using diff and patch (tutorial)`: http://www.linuxtutorialblog.com/post/introduction-using-diff-and-patch-tutorial

