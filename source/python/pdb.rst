debugger - pdb
**************

Links
=====

- `Using pdb`_ by Eric Holscher.
- `Debugging in Python, gentle introduction to using pdb`_
- `PuDB is a full-screen, console-based visual debugger for Python.`_
- `pdb++`_ is a drop-in replacement for pdb (recommended by Michael Foord).

Commands
========

======== ========= ========================================================================
l        list      Shows the current code around the line that your on.  The line that is about to be executed has a -* before it.
n        next      Executes the current line and moves to the next in the current file.
c        continue  Finishes the debugging session.  If there are more breakpoints (or if your set_trace() code gets called again before the request finishes) then you will get back to the debugger, otherwise the requests will complete back to the browser.
s        step      Goes down into the next level of execution (presumably a different file). You can follow your code through Django's internals this way. This is really good for finding bugs and getting a better understanding about how Django works.
r        return    Continue execution until the current function returns.
w        where     Shows you a backtrace of the calls that have gotten you to the current point in the code execution. This is really handy for the following 2 commands.
u        up        Allows you to go up one level in the backtrace.
d        down      Allows you to go down one level in the backtrace. These two commands allow you to see where you came from, and what variables were called where. This lets you see how the state ended up the current way that it did, which is great for figuring out how to fix it. :)
locals()           This isn't a debugger function, but it is really handy for seeing what is in the current scope that you can muck around with. locals().keys() is really nice too just to see the variables that are there, because request tends to pollute the locals() command.
======== ========= ========================================================================

Issues
======

If your screen gets corrupted running ``pdb``, try typing one (or more) of the
following:

::

  reset
  tset
  stty sane

(From `Fixing a misbehaving terminal after after software interruption` (pdb or
messed up output).

Sample
======

::

  import pdb; pdb.set_trace()

Note: To invoke the full-fledged python shell anywhere in code:

::

  import code; code.interact(local=locals())

*Ctrl D* on linux to continue (*Ctrl Z* on Windows)


.. _`Debugging in Python, gentle introduction to using pdb`: http://pythonconquerstheuniverse.wordpress.com/2009/09/10/debugging-in-python/
.. _`Fixing a misbehaving terminal after after software interruption`: http://blog.mfabrik.com/2011/03/23/fixing-a-misbehaving-terminal-after-after-software-interruption-pdb-or-messed-up-output/
.. _`pdb++`: http://pypi.python.org/pypi/pdbpp/
.. _`PuDB is a full-screen, console-based visual debugger for Python.`: http://pypi.python.org/pypi/pudb
.. _`Using pdb`: http://ericholscher.com/blog/2008/aug/31/using-pdb-python-debugger-django-debugging-series-/
