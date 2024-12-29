My Keymaps
***********

Links
=====

- My config files are in, https://gitlab.com/pkimber/cfg/
- :ref:`advent-of-neovim-2024-config`
- Advent of Neovim by TJ DeVries, https://www.youtube.com/watch?v=TQn2hJeHQbM

LSP
===

::

  checkhealth lsp

  Ctrl ]                Go to definition
  Ctrl T                Jump back
  Ctrl X  Ctrl O        Omni-completion
  Ctrl X  Ctrl L        Completes the current line
  grr                   List references
  grn                   Rename references
  =g                    Format the file
  K                     Docs

Telescope
=========

::

  checkhealth telescope

  :Telescope find_files

  <leader>en            nvim config files
  <leader>fb            List buffers
  <leader>fd            Files in directory
  <leader>fg            grep string under cursor
  <leader>fh            nvim Help
  <leader>fq            Quickfix
