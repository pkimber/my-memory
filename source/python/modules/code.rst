code
****

...*can be used to build applications which provide an interactive interpreter
prompt*...

Note:

- *From a comment:* why don't you use the ``-i`` flag of the intepreter.  It
  fallbacks on the python intpreter when the code is done and with all the
  local variables availables in local scope.

Links
=====

- http://docs.python.org/library/code.html
- http://www.peterbe.com/plog/to-code-or-to-pdb
  To code or to pdb in Python

Install
=======

The ``code`` module is built into python.

Usage
=====

See the sample script :download:`misc/sample-code-module.py`.

To run this script, and pre-populate the environment for the user:

::

  chmod +x sample-code-module.py
  $ ./sample-code-module.py
    AVAILABLE:
        items
        system_errors
        to_do
        users
    Database available as 'db'
    Python 2.6.6 (r266:84292, Sep 15 2010, 16:22:56)
    [GCC 4.4.5] on linux2
    Type "help", "copyright", "credits" or "license" for more information.
    (InteractiveConsole)

