Repository
**********

Create
======

`svnadmin create`_ - Create a new, empty repository.

::

  svnadmin create REPOS_PATH

To enable simple security for this repository, see :doc:`authentication`.

How do I manage several different projects under Subversion?
============================================================

http://subversion.tigris.org/faq.html#multi-proj

- Authentication on branches is possible but not easy.
- A single repository allows code to be easily copied or moved around between
  projects, and the history is preserved.
- Separate repositories may be sensible to prevent confusion over revision
  numbers.

Choosing a Repository Layout
http://svnbook.red-bean.com/nightly/en/svn.reposadmin.projects.html#svn.reposadmin.projects.chooselayout

How do I merge two completely separate repositories?
====================================================

http://subversion.tigris.org/faq.html#multi-merge

- Looks like it is possible to merge repositories.  So we can create separate
  repositories and merge them later if we feel the need.

Migrating a Repository
http://svnbook.red-bean.com/nightly/en/svn.reposadmin.maint.html#svn.reposadmin.maint.migrate

*The dump format can also be used to merge the contents of several different
repositories into a single repository*.


.. _`svnadmin create`: http://svnbook.red-bean.com/en/1.4/svn.ref.svnadmin.c.create.html
