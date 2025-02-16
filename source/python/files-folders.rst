Files and Folders
*****************

.. highlight:: python

Best to use ``pathlib`` for new code
====================================

e.g::

  import pathlib
  INFO_FOLDER = pathlib.Path.home().joinpath("Private", "deploy")

List all files in a folder
==========================

::

  pillar_folder = pathlib.Path.home().joinpath("Private", "deploy")
  for folder in pillar_folder.iterdir():
      if folder.is_dir():
          pass

::

  file_names = os.listdir(folder)
  for name in file_names:
      print os.path.join(folder, name)

Glob
----

`PyMOTW: glob`_::

  import glob
  file_list = glob.glob(path + '/*.jar')
  for name in file_list:
      # etc...

Subdirectories
--------------

Check out WalkDir_...

glob doesn't seem to work that well with subdirectories
(``glob.glob(path + '/*/*')``), probably better to use the script at
ActiveState_...

There is copy in my version control software at::

  utility\directory_walk.py

Copy
====

File
----

::

  import shutil
  shutil.copy(name, self.binFolder)

...or::

  >>> import shutil
  >>> shutil.copy('pom.xml', '/temp/')

Folder
------

Code adapted from the python source code: ``Lib/shutil.py``::

  import shutil

  def copytree(src, dst):
      """Recursively copy a directory tree using copy2()."""
      names = os.listdir(src)
      if not os.path.exists(dst):
          os.makedirs(dst)
      errors = []
      for name in names:
          srcname = os.path.join(src, name)
          dstname = os.path.join(dst, name)
          if os.path.isdir(srcname):
              copytree(srcname, dstname)
          else:
              shutil.copy2(srcname, dstname)

Delete a file
=============

See *Remove* below...

File/folder exists
==================

::

  import pathlib
  file_name = pathlib.Path("1-2-3.doc")
  if file_name.exists():
      pass

::

  import os
  if not os.path.exists(self.binFolder):
      # etc

Create a folder/directory
=========================

::

  from pathlib import Path

  filepath = Path("temp/test.txt")
  filepath.parent.mkdir(parents=True, exist_ok=True)

::

  import os
  # Make a single folder.
  os.mkdir(install_folder)
  # Recursive folder creation.
  os.makedirs(bin_folder)

Information
===========

Current Directory
-----------------

::

  import pathlib
  pathlib.Path.cwd()

::

  os.getcwd()

I used the following code to get the name of the folder::

  os.getcwd().split(os.sep)[-1]

File or Folder
--------------

::

  import pathlib
  file_name = pathlib.Path("1-2-3.doc")
  if file_name.is_dir():
      pass
  if file_name.is_file():
      pass

::

  import os
  if not os.path.isdir('temp'):
      pass
  if not os.path.isfile('temp'):
      pass

Home Folder
-----------

::

  import pathlib
  pathlib.Path.home()

::

  import os
  home_folder = os.getenv('USERPROFILE') or os.getenv('HOME')

.. note:: Also see :doc:`os` for the ``expanduser`` method.

Module Folder
-------------

::

  import pathlib
  pathlib.Path(__file__).resolve()

`Recipe 474083`_:
Get the path of the currently executing python script using import::

  os.path.dirname(os.path.realpath(__file__))

To find the name of the folder containing the module (and append)::

  plugin_folder = os.path.join(
      os.path.dirname(os.path.realpath(__file__)),
      'plugin',
  )

Move
====

Move (rename) a file or directory::

  import shutil
  shutil.move('from.txt', 'to.txt')

Open
====

To open a file (in newer versions of python)::

  with open('out.json') as f:
      # do some stuff with the file.

Write
-----

::

  f = open('results.txt', 'w')

Note: Append ``b`` to the file mode if your application is opening a binary
file and will be running on Windows.

To append to a file::

  f = open('results.txt', 'a')

Pathname/Filename Manipulations
===============================

Append folder/file names...
---------------------------

::

  import pathlib
  file_name = pathlib.Path("data", "1-2-3.doc")

The second example builds "``\\tools\\wrapper_win32_3.1.2``" on Windows::

  import os
  os.path.join('folder-name', 'file-name')
  os.path.join(os.sep, 'tools', 'wrapper_win32_3.1.2')

Extension
---------

::

  file_name, extension = os.path.splitext(path_and_file_name)

Filename
--------

::

  >>> f = 'c:/temp/temp.txt'
  >>> import os
  >>> os.path.basename(f)
  'temp.txt'

or...::

  from pathlib import Path
  Path(file_name).name

Normalise
---------

On case-insensitive filesystems, it converts the path to lowercase.  On
Windows, it also converts forward slashes to backward slashes::

  os.path.normcase(file_name)

Paths assembled from separate strings using ``join()`` or with embedded
variables might end up with extra separators or relative path components.
Use ``normpath()`` to clean them up::

  os.path.normpath(file_name)

Return a normalized absolutized version of the pathname path::

  >>> file_name = '/home/patrick/temp/../Downloads'
  >>> os.path.abspath(file_name)
  '/home/patrick/Downloads'

(New in version 1.5.2)

Separator
---------

::

  import os
  ps = '/tmp/my/path'.split(os.sep)

...or for the character which separates the file name from the extension::

  os.extsep

Split
-----

`os.path -- Common pathname manipulations, split`_::

  >>> import os
  >>> f = r'c:\repository\lucene\index.apt'
  >>> os.path.split(f)
  ('c:\\repository\\lucene', 'index.apt')

Read
====

Entire file
-----------

::

  f.read()

Entire file (lines)
-------------------

::

  f.readlines()

Remove (Delete)
===============

File
----

::

  os.remove(os.path.join(folder, name))

Folder
------

::

  import os
  if os.path.exists(folder):
      os.rmdir(folder)

or... to delete an entire directory tree::

  import shutil
  if os.path.exists(folder):
      shutil.rmtree(folder)

Statistics
==========

To get the file size::

  import os
  size = os.path.getsize(file_path)

or...::

  from pathlib import Path
  size = Path(file_name).stat().st_size

To convert the file size to a human readable format, use ``humanize``::

  # pip install humanize
  import humanize
  size = humanize.naturalsize(os.path.getsize(file_path))

or, try this function
from StackOverflow to `get human readable version of file size`_::

  def sizeof_fmt(num, suffix='B'):
      for unit in ['','Ki','Mi','Gi','Ti','Pi','Ei','Zi']:
          if abs(num) < 1024.0:
              return "%3.1f%s%s" % (num, unit, suffix)
          num /= 1024.0
      return "%.1f%s%s" % (num, 'Yi', suffix)

Date/time created/modified/accessed and size::

  import os
  import stat
  import time

  folder = '/temp'
  time_format = '%Y-%m-%d %I:%M:%S %p'
  file_names = os.listdir(folder)
  for name in file_names:
      file_stats = os.stat(os.path.join(folder, name))
      # create a dictionary to hold file info
      file_info = {
          'fname': name,
          'fsize': file_stats [stat.ST_SIZE],
          'f_lm': time.strftime(time_format, time.localtime(file_stats[stat.ST_MTIME])),
          'f_la': time.strftime(time_format, time.localtime(file_stats[stat.ST_ATIME])),
          'f_ct': time.strftime(time_format, time.localtime(file_stats[stat.ST_CTIME]))
      }
      print "file name = %(fname)s" % file_info
      print "  file size = %(fsize)s bytes" % file_info
      print "  last modified = %(f_lm)s" % file_info
      print "  last accessed = %(f_la)s" % file_info
      print "  creation time = %(f_ct)s" % file_info

Temporary
=========

File
----

The file has no name::

  # create a temporary file using a context manager
  with tempfile.TemporaryFile() as fp:
      fp.write(b'Hello world!')

  # file is now closed and removed

A named file::

  # create a temporary file using a context manager
  # close the file, use the name to open the file again
  with tempfile.NamedTemporaryFile(delete_on_close=False) as fp:
      fp.write(b'Hello world!')
      fp.close()
      # the file is closed, but not removed
      # open the file again by using its name
      with open(fp.name, mode='rb') as f:
          f.read()
  # file is now removed

Or (from my legacy notes)::

  import tempfile
  f = tempfile.NamedTemporaryFile(delete=False)

Folder
------
`tempfile - Generate temporary files and directories`_

To create a temporary folder::

  import tempfile
  # create a temporary directory using the context manager
  with tempfile.TemporaryDirectory() as tmpdirname:
      print('created temporary directory', tmpdirname)

  # directory and contents have been removed

Or (from my legacy notes)::

  import tempfile
  return tempfile.mkdtemp()

Note:

- If you specify the ``dir`` parameter, the folder will be created in there
  (e.g. ``tempfile.mkdtemp(dir=a_folder)``).
- The user of ``mkdtemp`` is responsible for deleting the temporary directory
  and its contents when done with it.
- ``mkdtemp`` returns the absolute pathname of the new directory.

touch
=====

::

  import os
  def touch(file_name, times=None):
      """
      Copied from:
      http://stackoverflow.com/questions/1158076/implement-touch-using-python
      """
      with file(file_name, 'a'):
          os.utime(file_name, times)


.. _`get human readable version of file size`: https://stackoverflow.com/questions/1094841/reusable-library-to-get-human-readable-version-of-file-size
.. _`os.path -- Common pathname manipulations, split`: http://docs.python.org/lib/module-os.path.html
.. _`PyMOTW: glob`: http://blog.doughellmann.com/2007/07/pymotw-glob.html
.. _`Recipe 474083`: http://code.activestate.com/recipes/474083/
.. _`tempfile - Generate temporary files and directories`: http://docs.python.org/library/tempfile.html
.. _ActiveState: http://code.activestate.com/recipes/52664/
.. _WalkDir: http://walkdir.readthedocs.org/en/latest/index.html
