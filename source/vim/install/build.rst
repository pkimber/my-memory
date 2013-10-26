Build
*****

Linux
=====

Build
-----

- Dependencies (`Building Vim`_)

  ::

    sudo apt-get install build-essential libncurses5-dev
    sudo apt-get install libgnome2-dev libgnomeui-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev
    sudo apt-get install python2.7-dev

  *Note*: To see a list of dependencies which Ubuntu thinks are required for
  ``vim``, run ``apt-get build-dep vim``.

- Configure

  ::

    cd ~/repo/src
    hg clone https://vim.googlecode.com/hg/ vim
    cd ~/repo/src/vim/src/

    rm auto/config.cache
    make distclean
    ./configure --enable-pythoninterp --enable-gui=gnome2 --with-features=huge --enable-multibyte

  Check the output from the ``configure`` command.  Near the beginning of the
  output is the following section:

  ::

    checking for python... /usr/bin/python
    checking Python version... 2.7
    checking Python is 1.4 or better... yep
    checking Python's install prefix... /usr
    checking Python's execution prefix... /usr
    checking Python's configuration directory... /usr/lib/python2.7/config

  **Note**: Make sure that the ``configuration directory`` is found.

  A bit further down you can find the *GUI support* section:

  ::

    checking --enable-gui argument... GNOME 2.x GUI support

  **Note**: Make sure that you have *GUI support*.

  ::

    make

- Run

  **Note**: Before ``vim`` will run correctly, we must do a ``make install``.

  http://vimdoc.sourceforge.net/htmldoc/usr_90.html

  ::

    If you want to install in your home directory, edit the ``Makefile`` and
    search for the line:

    #prefix = $(HOME)

    Remove the # at the start of the line.

    To install Vim do:

    make install

    That should move all the relevant files to the right place.  Now you can try
    running vim to verify that it works.  Use two simple tests to check if Vim can
    find its runtime files:

    :help
    :syntax enable

    If this doesn't work, use this command to check where Vim is looking for the
    runtime files:

    :echo $VIMRUNTIME

    You can also start Vim with the "-V" argument to see what happens during
    startup:

    vim -V

  ::

    cd ~/repo/src/vim/src/
    ./vim
    ./vim -g

Configuration
=============

:doc:`config`

python Support
==============

To check if your version of vim supports python run the ``version`` command...
See :doc:`config`, *version*.

To download a version of vim which includes support for python, download the
`Windows Vim installers without Cream`_.  (I found this link on the
`Cream download`_ page).


.. _`Cream download`: http://cream.sourceforge.net/download.html
.. _`Windows Vim installers without Cream`: http://sourceforge.net/project/showfiles.php?group_id=43866&package_id=39721
.. _`Building Vim`: http://vim.wikia.com/wiki/Building_Vim
