wc - Word Count
***************

Links
=====

http://dsl.org/cookbook/cookbook_16.html

Lines
=====

To output the number of lines in the file ``outline.txt``, type:

::

  wc -l outline.txt

To find the number of lines in the file ``outline.txt`` that contain the
string ``chapter``, type:

::

  grep chapter outline.txt | wc -l

