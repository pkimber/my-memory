Syntax Highlighting
*******************

Django Templates
================

- Download ``django.vim`` from
  http://www.vim.org/scripts/script.php?script_id=1487.
- Copy ``django.vim`` to ``~/.vim/syntax/``.
- For Django templates, set the file type as follows:

  ::

    :setfiletype htmldjango

JSON
====

- Download ``json.vim`` from
  http://www.vim.org/scripts/script.php?script_id=1945
- Copy ``json.vim`` to ``~/.vim/syntax/``.
- Add the following to your ``~/.vimrc`` file:

  ::

    au! BufRead,BufNewFile *.json setfiletype json

