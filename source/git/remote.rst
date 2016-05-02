Remote
******

To view the URL of a remote repository::

  git remote -v

To change the URI::

  git remote set-url origin git@github.com:pkimber/story.git

Server
======

.. note:: I don't think we need the ``.git`` on the end of the ssh path.

To create an empty repository on a remote server::

  cd ~/repo/temp/
  mkdir pillar.git
  git init --bare

To push to this repository::

  git remote set-url origin ssh://patrick@46.10.8.55:/home/patrick/repo/temp/pillar.git
  git push origin master
