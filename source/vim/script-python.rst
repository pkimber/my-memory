Script - python
***************

Links
=====

`Scripting Vim with Python`_

Blogs
-----

- `Getting to VIM's python interface`_.

Getting Started
===============

- Check you have a version of Vim with built in support for python,
  :doc:`python`.

...from this blog entry:

- Edit the ``.vimrc`` file and add the following script:

  ::

    " -------------------------------------------------------------------------
    " Sample script from blog:
    " http://orestis.gr/blog/2008/08/10/scripting-vim-with-python/
    python << EOF
    def testBuffers():
        import vim
        vim.current.window.cursor = (1, 0) # move to top left.
        vim.current.buffer[0] = 'hello world' # change first line.
        vim.current.buffer.append("last line")
    EOF
    nmap <silent> ;t :py testBuffers()<CR>
    " -------------------------------------------------------------------------

  Note: ``EOF`` is a token (can be anything) which marks the beginning and end
  of the script.

- The function can be run by typing ``;t`` in normal mode (not inserting text).

  Note: The function can also be run by typing the following at the ``:``
  prompt:

  ::

    :py testBuffers()

Commands
========

To execute a Vim command from within python code:

::

  python << EOF
  def cdEnv():
      import vim
      vim.command('cd ~/env/')
  EOF
  nmap <silent> cdenv :py cdEnv()<CR>

Insert
======

To insert some text into the current buffer:

::

  def date():
      import vim
      import time
      (row, col) = vim.current.window.cursor
      line = vim.current.buffer[row-1] # 0 vs 1 based
      before = line[:col+1]
      after = line[col+1:]
      update = before + time.strftime( "%d/%m/%Y %H:%M") + after
      vim.current.buffer[row-1] = update
      vim.current.window.cursor = (row, len(update)-1)


.. _`Scripting Vim with Python`: http://orestis.gr/blog/2008/08/10/scripting-vim-with-python/
.. _`Getting to VIM's python interface`: http://zerokspot.com/weblog/2009/02/22/getting-to-know-vims-python-interface/
