Issues
******

'dotencode' not supported
=========================

From `Mercurial: how to clone a repository for an older mercurial version`_:

I recently came over the an error in mercurial which is:

::

  abort: requirement 'dotencode' not supported!

I tried to clone a repository from an older mercurial version.  To solve this,
you need to execute the following with the newer mercurial version so it will
leave out the unsupported features for the older version.

::

  hg --config format.dotencode=0 clone --pull sourceDir destinationDir

hbisect
=======

`How to install Mercurial 1.0 on Ubuntu Hardy`_

::

  hgext/hbisect' overrides commands: bisect

Remove the ``hbisect=`` line from your configuration file, located at

::

  /etc/mercurial/hgrc.d/hgext.rc

...or ``~/.hgrc``.

Not trusting file...
====================

From `Configuring Mercurial Trust`_

Note: In this example, the un-trusted user is ``www-data`` - it could be
any other user:

::

  Not trusting file /web/sample/.hg/hgrc from untrusted user peter, group users

To solve this issue, add the following to ``~/.hgrc`` (replacing the user name
as required):

::

  [trusted]
  users = andy, peter

Permission denied
=================

::

  hg pull /home/peter/sample/
  abort: Permission denied: /home/peter/sample/.hg/requires

Not sure if this is the correct solution, but I had no permission to read the
``requires`` file::

  cd /home/peter/sample/
  find . -type f -exec chmod 644 {} \;

waiting for lock on repository
==============================

Make sure no one other process is using the repository:

::

  rm .hg/store/lock


.. _`Configuring Mercurial Trust`: http://mercurial.selenic.com/wiki/Trust
.. _`How to install Mercurial 1.0 on Ubuntu Hardy`: http://www.saltycrane.com/blog/2008/04/how-to-install-mercurial-10-on-ubuntu/
.. _`Mercurial: how to clone a repository for an older mercurial version`: https://sites.google.com/site/markusscharnowski/blog/mercurialhowtoclonearepositoryforanoldermercurialversion
