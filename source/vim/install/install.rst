Install
*******

Links
=====

- :doc:`build`
- :doc:`config`

Linux
=====

Neovim
------

From `AppImage ("universal" Linux package)`_::

  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
  chmod u+x nvim.appimage

  ./nvim.appimage --appimage-extract
  ./squashfs-root/AppRun --version

  # Optional: exposing nvim globally.
  sudo mv squashfs-root /
  sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
  nvim

Older Versions::

  apt install neovim
  apt install ripgrep

Plugins
https://gitlab.com/pkimber/cfg/-/blob/master/.cfg/README.rst::

  nvim
  :PlugInstall

:doc:`../plugin/fzf`

Configuration
=============

- :doc:`config`

python Support
==============

To check if your version of vim supports python run the ``version`` command...
See :doc:`config`, *version*.

To download a version of vim which includes support for python, download the
`Windows Vim installers without Cream`_.  (I found this link on the
`Cream download`_ page).


.. _`AppImage ("universal" Linux package)`: https://github.com/neovim/neovim/wiki/Installing-Neovim#appimage-universal-linux-package
.. _`Cream download`: http://cream.sourceforge.net/download.html
.. _`Windows Vim installers without Cream`: http://sourceforge.net/project/showfiles.php?group_id=43866&package_id=39721
