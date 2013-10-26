hg-git
******

Links
=====

- http://hg-git.github.com/
  Hg-Git plugin for Mercurial, adding the ability to push to and pull from a
  Git server repository from Hg.

Install
=======

::

  pip install hg-git

Configuration
=============

Add the following to your ``~/.hgrc`` file:

::

  [extensions]
  hgext.bookmarks =
  hggit =

Usage
=====

::

  hg clone git://github.com/scrooloose/nerdtree.git

This command will  clone the repository into the directory ``nerdtree.git``,
then convert it to a Mercurial repository.

