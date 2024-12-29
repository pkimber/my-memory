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

Oil
===

.. tip:: Seems to *just work*...

QuickFix
========

::

  Ctrl q                Copy Telescope list to Quickfix
  Alt k         cnext   Move to the next location in the QuickFix list
  Alt j         cprev   Move to the previous item in the QuickFix list
  cclose                Close the QuickFix list
  copen                 Move to the next location in the QuickFix list
  cdo s/pin/pop/gc      For each item in the QuickFix list, do a search and replace (with confirmation)

  lua vim.diagnostic.setqflist()        Copy diagnostics to the QuickFix list

  -- Copied from LSP section
  grr                   List references

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

  -- Copied from the QuickFix section
  Ctrl q                Copy Telescope list to Quickfix

Terminal
========

::

  term                  Open the terminal
  i                     To use the terminal
  Ctrl \   Ctrl N       Leave terminal mode
