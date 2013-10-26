Access Control (Apache)
***********************

Links
=====

`Per-directory access control, 1.5`_

Configuration
=============

Follow the :doc:`install`

Copy ``bin/mod_authz_svn.so`` from the Subversion installation folder to the
Apache ``modules`` folder.

In the Apache ``conf/httpd.conf`` file add the following **after** the
``LoadModule`` directive for ``mod_dav_svn.so``

::

  LoadModule authz_svn_module modules/mod_authz_svn.so

Create a text file to store your access control policy.  I created mine in
this folder:

::

  /repository/svn-access/svn-access.file

In the Apache ``conf/httpd.conf`` file add the ``AuthzSVNAccessFile``
directive to your Subversion section (don't forget to update the location of
the access control file):

::

  <Location /svn>
      DAV svn
      SSLRequireSSL
      AuthzSVNAccessFile /repository/svn-access/svn-access.file
      SVNParentPath /repository/svn

      AuthType Digest
      AuthName "Subversion Repository"
      AuthDigestDomain /svn/
      AuthUserFile /repository/apache/password/svn.htdigest
      Require valid-user
  </Location>

Set-up your access control file:

::

  # Give patrick read/write access to the bandsaw repository
  [bandsaw:/]
  patrick = rw

  # Patrick is not allowed to commit to the names folder inside the bandsaw repo.
  [bandsaw:/names]
  patrick = r

For more information on this file:

- `SVN AuthzSVNAccessFile woes`_
- `Per-Directory Access Control, 1.1`_


.. _`Per-directory access control, 1.5`: http://svnbook.red-bean.com/en/1.5/svn.serverconfig.httpd.html
.. _`SVN AuthzSVNAccessFile woes`: http://mbaierl.com/blog/2009/02/svn-authzsvnaccessfile-woes.html
.. _`Per-Directory Access Control, 1.1`: http://svnbook.red-bean.com/en/1.1/ch06s04.html
