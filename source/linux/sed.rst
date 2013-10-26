sed
***

Links
=====

- `Useful One-Line Scripts For sed`_ (Unix Stream Editor)

Get sed savvy:

- `Get sed savvy - part 1`_
- `Get sed savvy - part 2`_

Sample
======

To replace ``item`` with ``object`` in every file in the current folder:

::

  find . -type f | xargs sed -i s/abc_item/xyz_item/g

To replace ``hatherleigh`` with ``village`` in all ``.py`` files in the
current folder and sub-folders:

::

  find . -name "*.py" | xargs sed -i 's/hatherleigh/village/g'


.. _`Useful One-Line Scripts For sed`: http://sed.sourceforge.net/sed1line.txt
.. _`Get sed savvy - part 1`: http://eriwen.com/tools/get-sed-savvy-1/
.. _`Get sed savvy - part 2`: http://eriwen.com/tools/get-sed-savvy-2/

