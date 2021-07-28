Suckless - Install
******************

dwm
===

https://dwm.suckless.org/

::

  apt install libxft-dev

::

  cd ~/dev/src/
  git clone https://git.suckless.org/dwm

Compile and install::

  sudo -i
  cd /home/patrick/dev/src/dwm/
  make clean install

dmenu
=====

::

  cd ~/dev/src/
  git clone https://git.suckless.org/dmenu

::

  sudo -i
  cd /home/patrick/dev/src/dmenu/
  make clean install

I had to edit line 637 of ``demnu.c``:

.. code-block:: c

                        for (i = 0; i < n; i++)
  -                               if (INTERSECT(x, y, 1, 1, info[i]))
  +                               if (INTERSECT(x, y, 1, 1, info[i]) != 0)
                                        break;

.. tip:: For details, see:
         https://www.reddit.com/r/suckless/comments/ll3bm1/dmenu_installation_issue/

Startup
=======

Edit::

  sudo vim /usr/share/xsessions/xsession.desktop

Add the following::

  [Desktop Entry]
  Encoding=UTF-8
  Name=WM from xsession script
  Comment=Runs the window manager defined by xsession script
  Exec=/etc/X11/Xsession
  Type=Application

Login manager::

  vim ~/.xsession
  exec dwm

To set Caps Lock to Ctrl::

  setxkbmap -option ctrl:nocaps

.. tip:: From
         https://askubuntu.com/questions/445099/whats-the-opposite-of-setxkbmap-option-ctrlnocaps

Patches
=======

::

  cd ~/dev/src/dwm/
  wget https://dwm.suckless.org/patches/fibonacci/dwm-fibonacci-5.8.2.diff
  git apply dwm-fibonacci-5.8.2.diff

If you haven't made changes to ``config.h``::

  cp config.def.h config.h

Then run `Make and Install`_ (see above)...

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
  wget https://st.suckless.org/patches/nordtheme/st-nordtheme-0.8.2.diff

I am installing these at the moment::

  cd ~/dev/src/st/
  git apply st-scrollback-20190331-21367a0.diff
  git apply st-nordtheme-0.8.2.diff

I have installed these in the past::

  git apply st-no_bold_colors-20170623-b331da5.diff
  git apply st-solarized-light-20190306-ed68fe7.diff

If you haven't made changes to ``config.h``::

  cp config.def.h config.h

I like to use a font size of 14::

  vim config.h
  static char *font = "Ubuntu Mono:pixelsize=14:antialias=true:autohint=true";

Then run `Make and Install`_ (see above)...

surf
====

::

  apt install libgcr-3-dev
  # not sure if you need the following:
  apt install libglib2.0-dev

  add-apt-repository ppa:webkit-team/ppa
  apt update
  apt install libwebkit2gtk-4.0-dev

::

  git clone https://git.suckless.org/surf
  sudo -i
  cd /home/patrick/dev/src/surf/
  make clean install
