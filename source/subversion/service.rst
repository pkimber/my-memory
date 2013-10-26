Service
*******

Windows
=======

- `svnserve as Windows Service`_
- svnserve_

::

  sc create svn-my-read-only binpath= "C:\svn-win32-1.4.6\bin\svnserve.exe --service -r E:\svn\my-read-only --listen-host 192.168.1.9 --listen-port 3694" displayname= "SVN Repository (My Read Only)" depend= Tcpip start= auto

In this example:

==========================================  =============================================
``svn-my-read-only``                        Is the name of the service (must be unique).
``C:\\svn-win32-1.4.6\\bin\\svnserve.exe``  Is the full path to the ``svnserve.exe``.
``E:\\svn\\my-read-only``                   Path to the Subversion repository.
==========================================  =============================================

Note:

- Be careful about spaces when invoking the ``SC.EXE`` command:
  the ``key= value`` patterns must have no spaces between ``key=`` and exactly
  one space before the value.
- Be careful about spaces in your command-line to be invoked.  If a directory
  name contains spaces (or other characters that need escaping), place the
  entire inner value of ``binpath`` in double-quotes.
- Note that the word ``binpath`` is misleading - its value is a command line,
  not the path to an executable (that is why you need to surround it with quote
  marks if it contains embedded spaces).

Delete
------

To remove the service:

::

  sc delete svn-my-read-only


.. _`svnserve as Windows Service`: http://svnbook.red-bean.com/en/1.4/svn-book.html#svn.serverconfig.svnserve.invoking.winservice
.. _svnserve: http://svnbook.red-bean.com/en/1.4/svn.ref.svnserve.html

