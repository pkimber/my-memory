Folder
******

.. highlight:: bash

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

List
====

::

  ls -1d */

Also see ``sample/bash/iterate-folders.sh``.

Name
====

From `Get current directory name (without full path)`_::

  export DJANGO_SETTINGS_MODULE="example_${PWD##*/}.dev_`id -nu`"

  # to assign to a variable
  result=${PWD##*/}


.. _`Get current directory name (without full path)`: http://stackoverflow.com/questions/1371261/get-current-directory-name-without-full-path-in-bash-script
