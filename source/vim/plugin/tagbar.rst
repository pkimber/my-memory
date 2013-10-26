tagbar
******

Links
=====

- http://majutsushi.github.com/tagbar/
- https://github.com/majutsushi/tagbar

Dependencies
============

::

  sudo apt-get install exuberant-ctags

Install (using ``vundle``)
==========================

::

  Bundle 'majutsushi/tagbar'

Configuration
-------------

In ``~/.vimrc``:

::

  " http://mirnazim.org/writings/vim-plugins-i-use/
  nnoremap <leader>l :TagbarToggle<CR>

Commands
========

::

  s              sort
  <leader>l      toggle toolbar
  <enter>        jump to tag
  <space>        display the prototype
