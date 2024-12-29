Script
******

Links
=====

Scripting the Vim editor:

- `Part 1: Variables, values, and expressions`_.
- `Part 2: User-defined functions`_

Getting Started
===============

- Vim's own documentation can be viewed:

  ::

    :help vim-script-intro

  ...from the article above...

- Edit the ``.vimrc`` file and add the following script:

  ::

    " ----------------------------------------------------------------------------
    " sample script from IBM developerWorks article.
    " http://www.ibm.com/developerworks/linux/library/l-vim-script-1/
    function! ToggleSyntax()
        if exists("g:syntax_on")
            syntax off
        else
            syntax enable
        endif
    endfunction
    nmap <silent> ;s :call ToggleSyntax()<CR>
    " ----------------------------------------------------------------------------

  Note: ``g:syntax_on`` is referring to a global varible.

- The function can be run by typing ``;s`` in normal mode (not inserting text).



.. _`Part 1: Variables, values, and expressions`: http://www.ibm.com/developerworks/linux/library/l-vim-script-1/
.. _`Part 2: User-defined functions`: http://www.ibm.com/developerworks/linux/library/l-vim-script-2/

