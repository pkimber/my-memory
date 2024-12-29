NERD tree
*********

Links
=====

- http://www.vim.org/scripts/script.php?script_id=1658
  NERD tree plugin.
- `NERD tree source code`_...

Install
=======

- Use git to check out the source code:

  ::

    git clone git://github.com/scrooloose/nerdtree.git

- Copy the ``nerdtree.git/plugin/NERD_tree.vim`` file to your local Vim
  plugins folder:

  ::

    cp ~/src/nerdtree/plugin/NERD_tree.vim ~/.vim/plugin/

Configuration
=============

To change the files which are ignored by NERDTree, add the following to your
``~/.vimrc`` file:

::

  let NERDTreeIgnore=['.pyc$', '\~$']

Note:

- In this example, the only addition I have made to the default is to ignore
  ``pyc`` files.  The items in the list are regular expressions.
- To toggle the file filtering, use the ``f`` shortcut key.

Getting Started
===============

Open a fresh NERD tree:

::

  :NERDTree [<start-directory> | <bookmark>]

The root of the tree depends on the argument given.  If no argument is given,
the current directory will be used.  If a directory is given, that will be
used.

Commands
========

===== =======================================================================
o     Open selected file/folder (also *Enter*).
go    Open selected file/folder, but leave cursor in the NERDtree.
t     Open selected node in a new tab.
i     Open selected node in a split window.
gi    Open selected node in a split window, but leave cursor in the NERDtree.
s     Open selected node in a new vertical split.
gs    Open selected node in a new vertical split, but leave cursor in the NERDtree.
===== =======================================================================

Toggle
======

To toggle the tree on and off:

::

  :NERDTreeToggle

To map this to the ``F2`` key, add the following to ``~/.vimrc``:

::

  map <F2> :NERDTreeToggle<CR>


.. _`NERD tree source code`: http://github.com/scrooloose/nerdtree

