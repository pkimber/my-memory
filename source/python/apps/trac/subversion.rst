Subversion
**********

Install
=======

To install svn - :doc:`../subversion/command-line`

Install the python Subversion bindings:

::

  aptitude install python-svn

If you don't have an SVN repository, you can create a test one:

::

  mkdir -p /home/web/svn/
  cd /home/web/svn/
  svnadmin create test-trac

...or on Windows:

::

  mkdir C:\repository\svn\
  cd C:\repository\svn\
  svnadmin create test-trac

Configuration
=============

Log into Trac as an administrator.

Select *Admin* on the main menu...

Select *Version Control*, *Repositories*.

Fill in the *Add Repository* section.  In this example, I gave my repository
the name, ``test-repo``.

Click *Add*.

Synchronise the repository:

::

  trac-admin /home/web/trac/my-test-trac/ repository resync "test-repo"


The repository "test-repo" has been added.

You should now run trac-admin $ENV repository resync "test-repo" to synchronize
Trac with the repository.

You should also set up a post-commit hook on the repository to call trac-admin
$ENV changeset added "test-repo" $REV for each committed changeset.

When asked for the "*Path to repository*" input the folder of the repository
you just created e.g:

::

  Path to repository [/path/to/repos]> c:/repository/svn/test-trac
