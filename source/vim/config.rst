Config
******

Links
=====

- My config files are in, https://gitlab.com/pkimber/cfg/
- :ref:`advent-of-neovim-2024-build`
- :doc:`keymaps`
- `Add Icons to your Fonts with Nerd Fonts`_

Nerd Font
=========

Download fonts from https://www.nerdfonts.com/::

  # Extract the ``ttf`` files into a sub-folder of
  cd ~/.local/share/fonts/
  # e.g.
  ls -l /.local/share/fonts/UbuntuMono

Select the font in your terminal. For Gnome:

- Press the menu button in the top-right corner of the window and
  select *Preferences*.
- In the sidebar, select your current profile in the *Profiles* section.
  (my be *Unnamed*)
- Select Text.
- Tick *Custom font*.
- Select your font from the drop down.

.. tip:: For more information, see `Add Icons to your Fonts with Nerd Fonts`_

.. _advent-of-neovim-2024-config:

TJ DeVries Advent of Neovim 2024 - December 2024 - Configuration
================================================================

- https://www.youtube.com/watch?v=TQn2hJeHQbM

.. code-block:: bash

  # Config is in
  mkdir ~/.config/nvim/

  nvim ~/.config/nvim/init.lua

  # reload config e.g.
  source %
  # Or... shift 'v' to select a line, then
  :lua

  # Check health
  checkhealth lazy

Language Servers
----------------

Lua

.. code-block:: bash

  cd ~/dev/src/
  git clone https://github.com/LuaLS/lua-language-server
  cd ~/dev/src/lua-language-server
  ./make.sh

.. code-block:: lua

  -- In your ``setup`` function, set the full path for the ``cmd`` e.g.
  require("lspconfig").lua_ls.setup {
    cmd = { "/home/patrick/dev/src/lua-language-server/bin/lua-language-server" }
  }

Python ``pyright``:

.. code-block:: bash

  pnpm env use --global 20
  pnpm i -g pyright
  # check you can run 'pyright' from the command prompt
  pyright --version
  # load nvim and 'checkhealth'
  checkhealth lsp


.. _`Add Icons to your Fonts with Nerd Fonts`: https://www.youtube.com/watch?v=fR4ThXzhQYI
