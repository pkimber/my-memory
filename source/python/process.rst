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

https://docs.python.org/3.4/library/subprocess.html#subprocess.call

``call`` is a convenience function.

Run command with arguments.  Wait for the command to complete::

  import subprocess

  result = subprocess.call([
      'psql',
      '-X',
      '-U',
      'postgres',
      '-c',
      "DROP DATABASE test_api"
  ])
  if result < 0:
      raise "Child was terminated by signal " + str(result)

My original notes had this example::

  result = subprocess.call("svn move " + txtFile + " " + aptFile, shell=True)

.. warning:: Not sure why we would pass in the whole command string, or use
             ``shell=True`` - so check before using.

Background
----------

To run a task in the background::

  process = None
  try:
      process = subprocess.Popen(['uwsgi', 'uwsgi-api.ini'])
      # do some stuff
  finally:
      if process:
          process.kill()

Environment
-----------

To set the environment for the process::

  import os
  os.putenv('JAVA_HOME', './bin/java/jdk1.6')
  # continue as above...

Folder
------

To run the command in a specific folder, use the ``cwd`` parameter::

  result = subprocess.call(command, cwd=folder, shell=True)

Sleep
=====

See :doc:`time`.


.. _`How to invoke subprocesses from Python`: http://developer.spikesource.com/wiki/index.php/How_to_invoke_subprocesses_from_Python
.. _`Module of the Week: subprocess`: http://pymotw.com/2/subprocess/
.. _`PEP 324 - subprocess - New process module`: http://www.python.org/dev/peps/pep-0324/
.. _psutil: http://code.google.com/p/psutil/
.. _shell_command: http://shell-command.readthedocs.org/en/latest/index.html
