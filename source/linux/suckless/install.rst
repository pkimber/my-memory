Suckless
********

dwm
===

https://dwm.suckless.org/

::

  apt install libxinerama-dev

::

  cd ~/dev/src/
  git clone https://git.suckless.org/dwm

Compile and install::

  sudo -i
  cd /home/patrick/dev/src/dwm/
  make clean install

.. How to get it running.  From https://wiki.ubuntu.com/CustomXSession:
.. ln -s ~/.xinitrc ~/.xsession
.. chmod +x ~/.xinitrc
.. # log out of your window manager
.. # Ctrl Alt F1
.. # login
.. # stop your graphical login manager
.. sudo /etc/init.d/gdm stop
.. startx
.. # to restart your graphical login manager
.. sudo /etc/init.d/gdm start

From https://rhunter.org/blog/2012/04/17/dwm-a-tutorial-for-beginners/

Edit::

  sudo vim /usr/share/xsessions/user-session.desktop

Add the following::

  [Desktop Entry]
  Encoding=UTF-8
  Name=WM from xsession script
  Comment=Runs the window manager defined by xsession script
  Exec=/etc/X11/Xsession
  Type=Application

Edit ``~/.xsession`` and add the following:

.. code-block:: bash

  #!/bin/bash

  xrdb -merge .Xresources

  if [ -x /usr/bin/xfce4-power-manager ] ; then
    sleep 1
    xfce4-power-manager &
  fi

  while true; do
    xsetroot -name "$( date + "%F %I:%M %p" )"
    sleep 10
  done &

  exec dwm

Patches
-------

::

  cd ~/dev/src/dwm/
  wget https://dwm.suckless.org/patches/fibonacci/dwm-fibonacci-5.8.2.diff
  git apply dwm-fibonacci-5.8.2.diff

If you haven't made changes to ``config.h``::

  cp config.def.h config.h

Then run `Make and Install`_ (see above)...

dmenu
=====

::

  cd ~/dev/src/
  git clone https://git.suckless.org/dmenu

::

  sudo -i
  cd /home/patrick/dev/src/dmenu/
  make clean install

st - terminal
=============

::

  cd ~/dev/src/
  git clone https://git.suckless.org/st

::

  sudo -i
  cd /home/patrick/dev/src/st
  make clean install

Patches
-------

::

  cd ~/dev/src/st/
  wget https://st.suckless.org/patches/scrollback/st-scrollback-20190331-21367a0.diff
  wget https://st.suckless.org/patches/solarized/st-no_bold_colors-20170623-b331da5.diff
  wget https://st.suckless.org/patches/solarized/st-solarized-light-20190306-ed68fe7.diff

::

  cd ~/dev/src/st/
  git apply st-no_bold_colors-20170623-b331da5.diff
  git apply st-solarized-light-20190306-ed68fe7.diff
  git apply st-scrollback-20190331-21367a0.diff

If you haven't made changes to ``config.h``::

  cp config.def.h config.h

I like to use a font size of 14::

  vim config.h
  static char *font = "Liberation Mono:pixelsize=14:antialias=true:autohint=true";

Then run `Make and Install`_ (see above)...
