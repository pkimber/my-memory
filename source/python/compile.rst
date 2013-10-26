Compile
*******

Links
=====

- `compileall — Byte-compile Python libraries`_.

Sample
======

To force a recompile of all the ``.py`` files in the current directory and
all its subdirectories, excluding files in ``.svn`` directories:

::

  #!/usr/bin/python2.4

  import compileall
  import re

  compileall.compile_dir('./', rx=re.compile('/[.]svn'), force=True)


.. _`compileall — Byte-compile Python libraries`: http://docs.python.org/library/compileall.html

