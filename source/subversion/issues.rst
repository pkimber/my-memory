Issues
******

Can't open report.tmp
=====================

::

  Can't open 'C:\WINDOWS\TEMP\report.tmp': Access is denied.

`IronShay's Blog`_ You try to execute an Update operation and you get an error:

::

  svn: Can't open 'C:\WINDOWS\TEMP\report.tmp': Access is denied.

**This is a server** problem. In order to fix it, go to your SubVersion server
and re-start the service!

database is locked
==================

From `database is locked, cannot release`_:

::

  svn: E200033: database is locked, executing statement 'RELEASE   s0'

.. code-block:: bash

  $ cd .svn
  $ mv wc.db wc.db.old
  $ sqlite3 wc.db.old
  sqlite> .backup main wc.db
  sqlite> .exit

Gnome keyring
=============

::

  WARNING: gnome-keyring:: couldn't connect to: /run/user/myname/keyring-KptJUe/pkcs11:
  No such file or directory

The Gnome keyring has not been started.  Start it by running:

::

  gnome-keyring-daemon --start --components=pkcs11

Killed by Signal 15
===================

`serverfault - I get Killed by signal 15. when I'm using svn`_:

The message you are seeing is printed by ssh as a result of the fix for
svn-issue #2580.

This is expected. You need to add ``-q`` to the ssh command invoked by svn,
which happens by default as of 1.6.6.

Put this in ``~/.subversion/config``:

::

  ssh = $SVN_SSH ssh -q

Unable to tag SCM
=================

**Note**: Two types of *Unable to tag SCM* issues here!

Directory is missing
--------------------

- `Howto resolve "svn: Working copy '[directory]' is missing or not locked"`_
- `Obscure "svn mv" problem solved`_

  ::

    [ERROR] BUILD FAILURE
    [INFO] ------------------------------------------------------------------------
    [INFO] Unable to tag SCM
    Provider message:
    The svn tag command failed.
    Command output:
    svn: Directory 'src\main\resources\log4j' is missing
    svn: Directory 'src\main\resources\log4j' is missing

To solve this issue:

- Check the Subversion log and revert any changes made by the release plug-in.
- Make sure everything in the folder is version controlled and committed.
- Delete the folder.
- Do an ``svn update`` so the folder is re-instated.

Can't get username or password
------------------------------

This error was seen when running the *Maven release plugin*,
:doc:`../java/maven/plugin/release`

::

  [INFO] Working directory: C:\dev\framework\sms\admin_module
  [INFO] Tagging release with the label admin_module-1.0...
  [INFO] Executing: svn --non-interactive copy --file C:\Users\patrick\AppData\Local\Temp\maven-scm-2102047977.commit . svn://85.90.234.248/tags/framework/sms/admin_module/admin_module-1.0
  [INFO] Working directory: C:\dev\framework\sms\admin_module
  [INFO] ------------------------------------------------------------------------
  [ERROR] BUILD FAILURE
  [INFO] ------------------------------------------------------------------------
  [INFO] Unable to tag SCM
  Provider message:
  The svn tag command failed.
  Command output:
  svn: Can't get username or password

The issue was caused because we were using different url's to point to the
same repository e.g.

::

  scm:svn:svn://85.9.2.2/trunk and
  scm:svn:svn://svn.sample-company.com/trunk

To solve the issue, use the same url in your ``pom.xml`` files and your local
repository.


.. _`database is locked, cannot release`: http://stackoverflow.com/questions/17274329/svn-1-7-8-database-is-locked-cannot-release
.. _`Howto resolve "svn: Working copy '[directory]' is missing or not locked"`: http://vegdave.wordpress.com/2007/07/03/howto-resolve-svn-working-copy-directory-is-missing-or-not-locked/
.. _`IronShay's Blog`: http://blogs.microsoft.co.il/blogs/shayf/archive/2009/02/08/svn-error-can-t-open-c-windows-temp-report-tmp-access-is-denied-on-update.aspx
.. _`Obscure "svn mv" problem solved`: http://news.e-scribe.com/145
.. _`serverfault - I get Killed by signal 15. when I'm using svn`: http://serverfault.com/questions/120886/i-get-killed-by-signal-15-when-im-using-svn
