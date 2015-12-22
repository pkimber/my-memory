GitLab
******

.. note:: The script below will not install ``gitlab-ci-multi-runner`` on
          Elementary OS.  I am installing onto a cloud server running Ubuntu
          14.04.

Continuous Integration
======================

From `Install using official GitLab repositories`_

Install Docker, :doc:`../../linux/apps/docker/getting-started`

Install ``gitlab-ci-multi-runner``::

  curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-ci-multi-runner/script.deb.sh | sudo bash
  apt-get install gitlab-ci-multi-runner

.. tip:: Register the runner using ``sudo`` because you cannot enable the
         service unless you are ``root``.

Set-up::

  sudo -i
  gitlab-ci-multi-runner register

Sample output::

  Please enter the gitlab-ci coordinator URL (e.g. https://gitlab.com/ci):
  https://gitlab.com/ci
  Please enter the gitlab-ci token for this runner:
  eaeae123ababa
  Please enter the gitlab-ci description for this runner:
  [master-b]: ci.kbsoftware.co.uk
  Please enter the gitlab-ci tags for this runner (comma separated):
  INFO[0204] eabd2c42 Registering runner... succeeded
  Please enter the executor: shell, parallels, docker, docker-ssh, ssh:
  docker
  Please enter the Docker image (eg. ruby:2.1):
  pkimber/gitlab-pytest
  If you want to enable mysql please enter version (X.Y) or enter latest?
  If you want to enable postgres please enter version (X.Y) or enter latest?
  If you want to enable redis please enter version (X.Y) or enter latest?
  If you want to enable mongo please enter version (X.Y) or enter latest?
  INFO[0498] Runner registered successfully. Feel free to start it, but if it's running already the config should be automatically reloaded!

Run in debug mode::

  gitlab-runner --debug run

To start the service::

  gitlab-runner start

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
.. _`Install using official GitLab repositories`: https://gitlab.com/gitlab-org/gitlab-ci-multi-runner/blob/master/docs/install/linux-repository.md
