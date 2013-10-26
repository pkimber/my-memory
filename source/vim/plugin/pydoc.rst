PyDoc
*****

Links
=====

- `pydoc.vim`_

.. _`pydoc.vim`: http://www.vim.org/scripts/script.php?script_id=910

Install
=======

To install using *Vundle*:

- Add the following to your ``~/.vimrc`` file:

  ::

    Bundle 'fs111/pydoc.vim.git'

- Install using:

  ::

    :BundleInstall

Usage
=====

::

  <leader> pw                Find the PyDoc for the word under the cursor.
  :Pydoc re.compile          Search for the docs for the class.
