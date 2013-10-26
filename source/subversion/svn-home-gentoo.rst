Gentoo at Home
**************

See: http://gentoo-wiki.com/HOWTO_Apache2_with_subversion_SVN_and_DAV

::

  chown apache:apache /var/svn/ -R
  groupadd svnusers
  usermod -G apache,svnusers apache
  chgrp svnusers /var/svn/ -R
  chmod g+w /var/svn/ -R
  htpasswd2 -c /var/svn/conf/svnusers patrick

Then followed instructions in: http://gentoo-wiki.com/Apache_Modules_mod_ssl

Then the following works!!  https://localhost/svn/

