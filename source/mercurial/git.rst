GIT
***

Convert from Mercurial to GIT::

  cd ~/repo/src/
  git clone git://repo.or.cz/fast-export.git
  git init git_repo
  cd git_repo
  ~/repo/src/fast-export/hg-fast-export.sh -r /path/to/old/mercurial_repo
  git checkout HEAD
