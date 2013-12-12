GitHub
******

For more information, see `Fork A Repo`_

Create a pull request
=====================

Go to your fork of a repository on GitHub.

Click *Compare and review* (the green button with two arrows).

Rename a Repository
===================

Open *Settings* in the right hand tabs and use the *Rename* option.

Pull changes from a forked repository
=====================================

I have forked ``django-templatepages`` in GitHub.  The author is
``bryanchow``::

  git clone git@github.com:pkimber/django-templatepages.git
  cd django-templatepages/
  git remote add upstream https://github.com/bryanchow/django-templatepages.git

  git fetch upstream
  git merge upstream/master


.. _`Fork A Repo`: https://help.github.com/articles/fork-a-repo
