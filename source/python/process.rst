process
*******

Links
=====

- `How to invoke subprocesses from Python`_
- `Module of the Week: subprocess`_
- `PEP 324 - subprocess - New process module`_
- psutil_ a process utilities module for Python
- shell_command_

Command
=======

http://www.python.org/doc/2.5/lib/node530.html

``call`` is a convenience function.

The library reference says:
*Run command with arguments. Wait for command to complete, then return the*
``returncode`` *attribute.  The arguments are the same as for the Popen
constructor.*

::

  import subprocess

  result = subprocess.call("svn move " + txtFile + " " + aptFile, shell=True)
  if result < 0:
      raise "Child was terminated by signal " + str(result)

Environment
-----------

To set the environment for the process:

::

  import os
  os.putenv('JAVA_HOME', './bin/java/jdk1.6')
  # continue as above...

Folder
------

To run the command in a specific folder, use the ``cwd`` parameter:

::

  result = subprocess.call(command, cwd=folder, shell=True)

Sleep
=====

See :doc:`time`.


.. _`How to invoke subprocesses from Python`: http://developer.spikesource.com/wiki/index.php/How_to_invoke_subprocesses_from_Python
.. _`Module of the Week: subprocess`: http://blog.doughellmann.com/2007/07/pymotw-subprocess.html
.. _`PEP 324 - subprocess - New process module`: http://www.python.org/dev/peps/pep-0324/
.. _psutil: http://code.google.com/p/psutil/
.. _shell_command: http://shell-command.readthedocs.org/en/latest/index.html
