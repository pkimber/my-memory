os
**

Environment
===========

::

  import os
  os.environ['CLASSPATH']

Folder
======

To get the current working directory:

::

  import os
  os.getcwd()

Home Folder
===========

On Unix and Windows, return the argument with an initial component of
``~`` or ``~user`` replaced by that user‘s home directory:

::

  >>> import os
  >>> os.path.expanduser('~/temp/')
  '/home/patrick/temp/'

Note: Also see :doc:`files-folders` for the ``getenv`` method.

platform
========

I am using this call to check if we are running on Windows:

::

  import platform
  print 'platform.system: ' + platform.system()
  result = 'win' in platform.system().lower()

sys
===

::

  import sys
  print 'sys.platform: ' + sys.platform

