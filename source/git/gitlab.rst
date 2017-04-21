GitLab
******

.. highlight:: bash

.. note:: The script below will not install ``gitlab-ci-multi-runner`` on
          Elementary OS.  I am installing onto a cloud server running Ubuntu
          14.04.

Migrate from GitHub
===================

Adapted from `How do I import an existing git project into GitLab?`_

e.g. to move ``git@github.com:pkimber/contact.git`` to
``git@gitlab.com:kb/contact.git``

Create a new (empty) repository in GitLab:

- Log into https://gitlab.com/ using our company login details.
- Click on *New Project*.
- In the *Project path* section select the ``kb`` group.  Select the correct
  *Visibility Level* and click *Create Project* e.g.
  ``git@gitlab.com:kb/contact.git``

In a **temporary** directory::

  git clone --mirror git@github.com:pkimber/contact.git
  cd contact.git
  git remote add gitlab git@gitlab.com:kb/contact.git
  git push gitlab --mirror

Now if you have a locally cloned repository that you want to keep using with
the new remote, run the following commands there::

  git remote remove origin
  git remote add origin git@gitlab.com:kb/contact.git
  git fetch --all

Rename the GitHub repository to stop it from being used e.g.
``contact`` to ``old-contact-migrated-to-gitlab``


.. _`How do I import an existing git project into GitLab?`: http://stackoverflow.com/questions/20359936/how-do-i-import-an-existing-git-project-into-gitlab
