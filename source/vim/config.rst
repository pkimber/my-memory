Config
******

Links
=====

- My config files are in, https://gitlab.com/pkimber/cfg/
- :ref:`advent-of-neovim-2024-build`
- :doc:`keymaps`

.. _advent-of-neovim-2024-config:

TJ DeVries Advent of Neovim 2024 - December 2024 - Configuration
================================================================

- https://www.youtube.com/watch?v=TQn2hJeHQbM

Language Servers
----------------

Python ``pyright``:

.. code-block:: bash
  
  pnpm env use --global 20
  pnpm i -g pyright
  # check you can run 'pyright' from the command prompt
  pyright --version
  # load nvim and 'checkhealth'
  checkhealth lsp

.. code-block:: bash

  # Config is in
  mkdir ~/.config/nvim/

  nvim ~/.config/nvim/init.lua

  # reload config
  source %
  # Or... shift 'v' to select a line, then
  :lua

  # Check health
  checkhealth lazy
