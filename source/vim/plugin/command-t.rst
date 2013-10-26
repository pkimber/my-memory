CommandT
********

Links
=====

- `CommandT docs`_
- For a native vim plugin (i.e. no Ruby), we could try `ctrlp.vim`_

.. _`CommandT docs`: http://git.wincent.com/command-t.git/blob_plain/HEAD:/doc/command-t.txt
.. _`ctrlp.vim`: http://kien.github.com/ctrlp.vim/

Prerequisites
=============

- Check the version of Ruby on your workstation :doc:`../../ruby/install`
- Make sure ``vim`` has support for Ruby :doc:`../ruby`.
- The version of Ruby in ``vim`` and on the system should be the same.

Install
=======

- Using Vundle:

  ::

    Bundle 'wincent/Command-T.git'

- Install using:

  ::

    :BundleInstall

- Compile the Ruby code:

  ::

    cd ~/.vim/bundle/Command-T/
    rake make

Usage
=====

::

  :CommandT                           mapped to <leader>t in my ~/.vimrc
  :CommandTBuffer                     currently open files
  :CommandTFlush                      re-scan folders

I have mapped leader ``t`` to ``CommandT`` in my ``~/.vimrc``:

::

  nnoremap <leader>t :CommandT<CR>
