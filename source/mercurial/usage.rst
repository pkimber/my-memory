Usage
*****

- :doc:`install`
- :doc:`setup`
-  Usage (this document).

Create Repository
=================

::

  cd project/
  hg init

Ignore
======

Set-up the files you want ignored... create an ``.hgignore`` file in the root
of your repository.  Here is a sample file:

::

  syntax: glob
  logger.log
  .checkstyle
  .classpath
  .hgignore
  .project
  .settings
  *~
  *.Cache
  *.class
  *.dll
  *.exe
  *.pdb
  *.pyc
  *.sln
  *.suo
  *.swp
  *.zip
  target/

Update the ``.hgignore`` file and run the ``stat`` command until you are
happy with the result:

::

  hg stat

Add and Commit
==============

When you are happy with the ``.hgignore`` file, add and commit the remaining
files:

::

  hg add

Diff
====

::

  hg diff

Log
===

::

  hg log src\main\java\com\sample\Hello.java

Clone
=====

To make a copy of our project:

::

  cd ..
  hg clone project project-copy

...or to clone a repository hosted on a server:

::

  hg clone http://toybox:8081 project-copy

For more information (including use over ssh) see :doc:`commands/clone`...

Commands
========

===================  ==========================================================
add                  :doc:`commands/add`
cat                  :doc:`commands/cat`
clone                :doc:`commands/clone`
commit               :doc:`commands/commit`
copy                 :doc:`commands/copy`
diff                 :doc:`commands/diff`
export               :doc:`commands/export`
forget               :doc:`commands/forget`
incoming             :doc:`commands/incoming`
log                  :doc:`commands/log`
merge                :doc:`commands/merge`
outgoing             :doc:`commands/outgoing`
pull                 :doc:`commands/pull`
revert               :doc:`commands/revert`
===================  ==========================================================

Web Interface
=============

To browse through your repository:

::

  hg serve --daemon --port 8081

...then open http://localhost:8081/ with your browser...

To serve multiple repositories, have a look at:

- `Setting up a Mercurial repository from SVN for dummies (like me)`_
- `PublishingRepositories`_

Workflow
========

From `Learning Mercurial in Workflows`_:

Lone developer with nonlinear history (fix code in an earlier revision).
------------------------------------------------------------------------

::

  hg update 3
  hg identify -n
  (fix the bug)
  hg commit
  hg update tip
  hg merge
  hg resolve --list
  hg resolve conflicting_file
  hg resolve --mark conflicting_file
  hg commit


.. _`Setting up a Mercurial repository from SVN for dummies (like me)`: http://digitalspaghetti.me.uk/2007/11/07/setting-up-a-mercurial-repository-from-svn-for-dummies-like-me
.. _`PublishingRepositories`: http://www.selenic.com/mercurial/wiki/index.cgi/PublishingRepositories
.. _`Learning Mercurial in Workflows`: http://mercurial.selenic.com/guide/
