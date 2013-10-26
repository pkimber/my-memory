Issues
******

Only AF_INET sockets are currently supported on jython
======================================================

Had the following issue when using ``urllib``/``urllib2``:

::

  AssertionError: Only AF_INET sockets are currently supported on jython

Running the same code in python, also throws an error, but this time much more
helpful:

::

  urllib2.URLError: <urlopen error (10061, 'Connection refused')>

Turns out the service wasn't running!

pip
===

``pip`` doesn't work on jython when ``PIP_USE_MIRRORS`` is set to ``true`` in
the environment e.g:

::

  export PIP_USE_MIRRORS=true

``get_mirrors`` in ``https://github.com/pypa/pip/blob/develop/pip/index.py``
uses ``socket.gethostbyname_ex`` which doesn't appear to be available in
jython 2.5.2...

Strange behaviour with zxJDBC with Jython 2.5b0
===============================================

`Strange behaviour with zxJDBC with Jython 2.5b0`_

::

  zxJDBC.DatabaseError: driver [net.sourceforge.jtds.jdbc.Driver] not found

To solve the problem, try running ``jython`` with "``--verify``" option:

::

  jython.bat --verify data.py


.. _`Strange behaviour with zxJDBC with Jython 2.5b0`: http://www.nabble.com/Strange-behaviour-with-zxJDBC-with-Jython-2.5b0-td20857300.html
