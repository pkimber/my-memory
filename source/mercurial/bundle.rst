Bundle
******

The best way to create a compressed version of a repository is with a bundle.
It will be significantly smaller than a tarball or a zip file.

To include all revisions, simply specify the ``null`` base.  After release
0.9.5 the switch ``--all`` was added as an alias to ``--base null``, so you
can use ``hg bundle --all project.hg`` instead.

Links
=====

- http://www.selenic.com/mercurial/hg.1.html#bundle
- http://mercurial.selenic.com/wiki/CreateBundleOfAllChanges
- http://mercurial.selenic.com/wiki/BackUp

Sample
======

See ``~/bin/backup-mercurial.sh``

Usage
=====

To create a bundle containing every change-set in the repository:

::

  hg bundle --all ~/repo-name.hg

To create a new repository containing the contents of the bundle:

::

  cd ~/empty-folder/
  hg init
  hg unbundle ~/repo-name.hg

