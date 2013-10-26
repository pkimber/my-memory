Install
*******

Links
=====

- Sample ``httpd.conf`` for Subversion with all features in this file:

  ::

    ../../misc/howto/apache/http/subversion-httpd.conf

Windows
=======

Prerequisites
-------------

To install Subversion with SSL on Apache:

- Follow the *Apache install instructions*, :doc:`../apache/http/install`.

Download and Install
--------------------

- Download ``Setup-Subversion-1.6.4.msi`` from
  http://subversion.tigris.org/getting.html#windows
- Install.  I installed to:

  ::

    C:\tools\Subversion\

Apache - Configuration
----------------------

`httpd, the Apache HTTP Server`_

- Copy ``bin/mod_dav_svn.so`` to the Apache ``modules`` folder.
- Add the following to your Apache ``httpd.conf`` file:

  ::

    LoadModule dav_module modules/mod_dav.so
    LoadModule dav_svn_module modules/mod_dav_svn.so

  Note: You need both of these modules if ``mod_dav`` was compiled as a shared
  object (instead of statically linked directly to the ``httpd`` binary).

- Add the following to your Apache ``httpd.conf`` file:

  ::

    <Location /svn>
        DAV svn
        SVNParentPath /repository/svn
    </Location>

  Note: This configuration will support multiple Subversion repositories in the
  ``/repository/svn`` folder.  Use the ``SVNPath`` directive to support a
  single repository.

- Re-start Apache.  You should now be able to browse to your repositories.
  e.g. to access a repository in ``\\repository\svn\\myrepo-svn``, browse to
  http://localhost/svn/myrepo/.

  **Note**: Don't forget the trailing slash...

  The above configuration will give you a public Subversion repository
  accessible over http.  Any person who has access to the Apache server will be
  able to checkout and commit without authentication.

Apache - Authentication (Digest)
--------------------------------

- Create a password file (and the first user):

  `htdigest - manage user files for digest authentication`_

  ::

    \tools\apache2.2\bin\htdigest -c \repository\apache\password\svn.htdigest "Subversion Repository" patrickk

  **Note**: After the first user, you don't need the "``-c``" option any more:

  ::

    \tools\apache2.2\bin\htdigest \repository\apache\password\svn.htdigest "Subversion Repository" sams

  Note: The ``realm`` specified as the second parameter in the ``htdigest``
  command (in this example, ``Subversion Repository``) must match the value in
  the Apache ``AuthName`` directive (see below).

- Update the Apache ``conf/httpd.conf`` file:

  ::

    LoadModule auth_digest_module modules/mod_auth_digest.so
    LoadModule authn_file_module modules/mod_authn_file.so
    LoadModule authz_user_module modules/mod_authz_user.so

    <Location /svn>
        DAV svn
        SVNParentPath /repository/svn

        AuthType Digest
        AuthName "Subversion Repository"
        AuthDigestDomain /svn/
        AuthUserFile /repository/apache/password/svn.htdigest
        Require valid-user
    </Location>

Apache - SSL
------------

- Copy the instructions in *SSL Certificate*, :doc:`../apache/http/certificate`

  Completing this step should allow you to access your Subversion repository
  using SSL and non-SSL connections.

- To secure the Subversion repository so it can only be accessed through SSL,
  add the ``SSLRequireSSL`` directive to the Apache ``conf/httpd.conf``
  file:

  ::

    <Location /svn>
        DAV svn

        SSLRequireSSL

        SVNParentPath /repository/svn

        AuthType Digest
        AuthName "Subversion Repository"
        AuthDigestDomain /svn/

        AuthUserFile /repository/apache/password/svn.htdigest
        Require valid-user

    </Location>

Apache - Per-directory access control
-------------------------------------

See :doc:`access-control`


.. _`httpd, the Apache HTTP Server`: http://svnbook.red-bean.com/en/1.5/svn.serverconfig.httpd.html
.. _`htdigest - manage user files for digest authentication`: http://httpd.apache.org/docs/2.0/programs/htdigest.html

