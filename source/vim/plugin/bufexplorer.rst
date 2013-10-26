Buffer Explorer/Browser
***********************

Install
=======

- Download ``bufexplorer.zip`` from
  http://www.vim.org/scripts/script.php?script_id=42
- Unzip in your ``~/.vim`` folder:

  ::

    cd ~/.vim
    unzip ~/download/vim/bufexplorer.zip

- Probably best to set-up the *Shortcut* below...
- Re-start vim...

Shortcut
========

Add the following to your ``~/.vimrc`` file:

::

    " Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
    " See http://vim.wikia.com/wiki/Easier_buffer_switching
    nnoremap <silent> <M-F12> :BufExplorer<CR>
    nnoremap <silent> <F12> :bn<CR>
    nnoremap <silent> <S-F12> :bp<CR>

Commands
--------

::

  Alt-F12      opens a window listing the buffers
  F12          next buffer
  Shift-F12    previous buffer
