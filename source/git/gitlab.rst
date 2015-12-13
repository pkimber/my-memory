GitLab
******

.. note:: The script below will not install ``gitlab-ci-multi-runner`` on
          Elementary OS.  I am installing onto a cloud server running Ubuntu
          14.04.

CI
==

From `Install using official GitLab repositories`_

Install Docker, :doc:`../../linux/apps/docker/getting-started`

Install ``gitlab-ci-multi-runner``::

  curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-ci-multi-runner/script.deb.sh | sudo bash
  apt-get install gitlab-ci-multi-runner

Set-up::

  $ gitlab-ci-multi-runner register
  Please enter the gitlab-ci coordinator URL (e.g. https://gitlab.com/ci):
  https://gitlab.com/ci
  Please enter the gitlab-ci token for this runner:
  eabd2c42b5e5b3a34d044e9dae97f1
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


.. _`Install using official GitLab repositories`: https://gitlab.com/gitlab-org/gitlab-ci-multi-runner/blob/master/docs/install/linux-repository.md
