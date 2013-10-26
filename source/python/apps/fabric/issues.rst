Issues
******

Issue trying to ``run`` a command on a remote server:

::

  Fatal error: Low level socket error connecting to host servername on port 22:
    No such file or directory (tried 1 time)

  Underlying exception:
    No such file or directory

To solve the problem, use the IP address rather than the server name from ``~/.ssh/config``
