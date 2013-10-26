grep
****

Links
=====

- `Contextual Grepping`_
- :doc:`ack` is a tool like grep aimed at programmers with large trees of
  source code.
- http://pypi.python.org/pypi/grin

Usage
=====

unix search file content including subfolders using grep

::

  grep -r "my search term" *

Additionally, you can include/exclude the files that are searched

::

  grep -r --include=*.py "my search term" *

...this example excludes any file where the filename contains carpal:

::

  grep -r --exclude=*carpal* vim *

The following returns all the lines that contain a string matching
the expression ``foo`` in the file ``file``:

::

  grep foo file

To invert the search (this example will list all files which do not have a
``.pyc`` extension):

::

  grep -v .pyc

wc
==

See :doc:`wc`.


.. _`Contextual Grepping`: http://www.codekoala.com/blog/2010/contextual-grepping/
