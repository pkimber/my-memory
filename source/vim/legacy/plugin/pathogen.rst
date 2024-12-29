Pathogen
********

**I have started using https://github.com/gmarik/vundle instead of Pathogen**

Links
=====

- `The Modern Vim Config with Pathogen`_
- `Synchronizing plugins with git submodules and pathogen`_
- `What's the best add-on manager?`_,
  probably worth checking out https://github.com/gmarik/vundle

Install
=======

- Move your old ``~/.vimrc`` file out of the way.
- Move your old ``~/.vim`` folder out of the way.
- Create the following folder:

  ::

    mkdir -p ~/.vim/autoload

- Change into the folder and download ``pathogen.vim``:

  ::

    cd ~/.vim/autoload/
    wget http://github.com/tpope/vim-pathogen/raw/master/autoload/pathogen.vim --no-check-certificate

- Add the following to the top of your ``~/.vimrc`` file:

  ::

    " the pathogen plug-in must be the first in this file:
    call pathogen#helptags()
    call pathogen#runtime_append_all_bundles()

Configuration
=============

- Create a folder for plug-in bundles:

  ::

    mkdir ~/.vim/bundle/

Plugin
======

To install a plug-in:

- Locate your plug-in and check out the source code into the ``bundle`` folder:

  ::

    cd ~/.vim/bundle/
    git clone git://github.com/scrooloose/nerdtree.git


.. _`Synchronizing plugins with git submodules and pathogen`: http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
.. _`The Modern Vim Config with Pathogen`: http://tammersaleh.com/posts/the-modern-vim-config-with-pathogen
.. _`What's the best add-on manager?`: https://convore.com/vim/whats-the-best-add-on-manager/
