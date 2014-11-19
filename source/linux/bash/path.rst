Path
****

.. highlight:: bash

::

  if [ -d "$HOME/bin" ] ; then
    export PATH=$HOME/bin:$PATH
  fi

From my ``~/.bashrc``::

  # funky function nicked from Red Hat and altered a little
  # adds entries to the PATH at the start or end and only if the dir exists
  pathmunge() {
      if ! echo $PATH | /bin/egrep -q "(^|:)$1($|:)" && [ -d $1 ] ; then
          if [ "$2" = "after" ] ; then
              PATH=$PATH:$1
          else
              PATH=$1:$PATH
          fi
      fi
  }

  # add some useful PATH entries
  pathmunge /usr/local/sbin
  pathmunge /usr/sbin
  pathmunge /sbin
  pathmunge $HOME/bin after
  pathmunge $HOME/opt after

  # clean up
  unset pathmunge
