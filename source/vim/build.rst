Build
*****

Links
=====

- My config files are in, https://gitlab.com/pkimber/cfg/
- :ref:`advent-of-neovim-2024-config`
- https://www.youtube.com/watch?v=TQn2hJeHQbM
- https://github.com/neovim/neovim/blob/master/BUILD.md

.. _advent-of-neovim-2024-build:

TJ DeVries Advent of Neovim 2024 - December 2024 - Build
========================================================

.. code-block:: bash

  # Build prerequisites
  sudo apt-get install ninja-build gettext cmake unzip curl build-essential

  # Source code
  cd ~/dev/src/
  git clone git@github.com:neovim/neovim.git

  # Build
  cd ~/dev/src/neovim/
  make CMAKE_BUILD_TYPE=RelWithDebInfo
  sudo make install

.. tip:: To configure, :ref:`advent-of-neovim-2024-config`
