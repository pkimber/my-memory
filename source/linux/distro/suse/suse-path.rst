Path
****

The SuSE path appears from somewhere - but I do not know where.  So I am
building the whole path.  The original path was:

::

  PATH=/home/patrickk/bin:/usr/local/bin:/usr/bin:/usr/X11R6/bin:/bin:/usr/games:/opt/gnome/bin:/opt/kde3/bin:/usr/lib/jvm/jre/bin

Added the following to ".bashrc" in my home directory:

::

  # Setup original path
  PATH="/home/patrickk/bin"
  PATH="$PATH:/usr/local/bin:/usr/bin:/usr/X11R6/bin:/bin:/usr/games"
  PATH="$PATH:/opt/gnome/bin:/opt/kde3/bin"

