Backup
******

Standard Routine
================

Make sure the SubVersion server is running:

::

  /etc/init.d/apache2 start

Backup the repository:

::

  svn-hot-backup /var/svn/ /home/patrick/backup/svn/

Compress the file (in this example the backup file was up to revision 69):

::

  cd /home/patrick/backup/svn/
  tar cvfz svn-69.tgz svn-69/

Copy to a Windows workstation using SCP and copy to CD.

Mirror
======

- `Mirroring Repositories with svnsync`_
- `Mirroring Subversion from Windows`_

Older Notes
===========

How to do a backup/dump

The following command will backup the repository in ``/var/svn/`` to the
specified folder:

::

  svn-hot-backup /var/svn/ /home/patrick/backup/svn_2005_feb_17

Login to linux server as root.

Change directory to /svnbackups

::

  cd /svnbackups

Make a directory with today's date : eg 06July2005

::

  mkdir 06July2005

Change directory to /var/svn

::

  cd /var/svn

Run the SVN backup:

::

  svn-hot-backup /var/svn /svnbackups/06July2005

Change directory to /svnbackups

::

  cd /svnbackups

Compress the directory

::

  tar cvfz SVN_07July2005.tgz 07July2005/

Move the tgz file to a windows machine using winSCP.


.. _`Mirroring Repositories with svnsync`: http://blogs.open.collab.net/svn/2007/08/mirroring-repos.html
.. _`Mirroring Subversion from Windows`: http://devlicio.us/blogs/christopher_bennage/archive/2009/03/11/mirroring-subversion-from-windows.aspx

