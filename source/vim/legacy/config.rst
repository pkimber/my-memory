Config (Legacy)
***************

Default
=======

The configuration is set in the ``~/.vimrc`` file.  On Windows::

  C:\Program Files\Vim\_vimrc

My standard configurations:

- `_vimrc version 1`_
- `_vimrc version 2`_
- `_vimrc version 3`_
  Working on Debian Linux with no GUI.  (copied from
  `dotfiles-ciaranm`_)

Note: On Linux, change the ``backupdir`` to ``~/temp/backup-vim/``.

Alternative
-----------

To use a different ``.vimrc`` file:

::

  gvim -u test_vimrc

Line Numbers
============

::

  set number

Line Length
===========

From `How to use Vim's textwidth like a pro`_ by Edward Z. Yang:

Add the following to ``~/.vimrc`` to highlight lines which are longer than
80 characters:

::

  augroup vimrc_autocmds
      autocmd BufRead * highlight OverLength ctermbg=darkgrey guibg=#592929
      autocmd BufRead * match OverLength /\%80v.*/
  augroup END

Ruler
=====

To display line and column numbers:

::

  set ruler

Version
=======

::

  :version


.. _`_vimrc version 1`: ../../misc/howto/vim/_vimrc.v1.txt
.. _`_vimrc version 2`: ../../misc/howto/vim/_vimrc.v2.txt
.. _`_vimrc version 3`: ../../misc/howto/vim/_vimrc.v3.txt
.. _`dotfiles-ciaranm`: http://github.com/ciaranm/dotfiles-ciaranm/tree/master
.. _`How to use Vim's textwidth like a pro`: http://blog.ezyang.com/2010/03/vim-textwidth/
