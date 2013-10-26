guake
*****

Download the latest sources from http://guake.org/downloads/

Unzip the source code

::

  cd ~/repo/src/
  tar xzf ~/Downloads/guake/guake-0.4.4.tar.gz
  cd guake-0.4.4/

::

  ./configure && make
  sudo -s
  make install

Issues
======

::

  configure: error: Your intltool is too old.
  You need intltool 0.35.0 or later.

I think we need a newer version of GTK.  Is your Gnome Shell on the latest
version?
