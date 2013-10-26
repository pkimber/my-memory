Bash Support
************

Links
=====

- http://www.vim.org/scripts/script.php?script_id=365
  bash-support.vim
  ``BASH-IDE``:
  Write and run BASH-scripts using menus and hotkeys.
- `Turn Vim into a bash IDE`_

Download
========

Download ``bash-support.zip`` from the `bash-support.vim page`_.

Install
=======

Extract the zip archive, ``bash-support.zip``, into ``$HOME/.vim/``:

::

  cd ~/.vim/
  unzip bash-support.zip

Note: I had to create the folder (``mkdir ~/.vim/``).

Setup
=====

Edit your ``~/.vimrc`` file to include a few personal details:

::

  vim ~/.vimrc
  let g:BASH_AuthorName   = 'Patrick Kimber'
  let g:BASH_Email        = 'name@email.com'
  let g:BASH_Company      = 'Sample Company'

Comments
========

==========  =========================
``\\ch``    create a file header
``\\cfu``   function header
==========  =========================

Note:  If you create a new script with an ``.sh`` extension, the plugin will
automatically create a file header for you.

Statements
==========

==========  =========================
``\\sie``   if, then, else
``\\sw``    while, do, done
==========  =========================

Run
===

========  ===========================
``\\rr``  save file, run script
``\\rc``  save file, check syntax
========  ===========================

..   If the bash debugger, <<<bashdb>>>, is not installed (on Debian):
..
.. ---
.. apt-get install bashdb
.. ---


.. _`Turn Vim into a bash IDE`: http://www.linux.com/articles/114359
.. _`bash-support.vim page`: http://www.vim.org/scripts/script.php?script_id=365

