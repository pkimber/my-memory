Folder
******

.. highlight:: bash

List
====

::

  ls -1d */

Also see ``sample/bash/iterate-folders.sh``.

Exists
======

Check if a folder exists::

  DESTDIR=$HOME/repo/vm/$1/
  if [ -d "$DESTDIR" ]; then
      echo Folder $DESTDIR already exists, cannot continue...
      exit
  fi
  mkdir -p $DESTDIR
  if [ ! -d "$DESTDIR" ]; then
      echo Error: Folder $DESTDIR was not created...
      exit
  fi
