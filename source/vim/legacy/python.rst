python
******

Links
=====

- `Python with a modular IDE (Vim)`_ copy of article by `John Anderson`_
- `Vim: Python Code Folding And My VIMRC`_
- `django + vim`_
- `Ropevim is a plugin for performing python refactorings in vim`_.
- `Python and vim: Make your own IDE`_
- `Vim autocomplete, Django and virtualenv`_

Setup
=====

Three ways to check if your version of vim includes support for python:

- ``has`` should return ``1``:

  ::

    :echo has('python')

- ``filetype`` should return ``python`` (when editing a python file):

  ::

    :set filetype

- run the ``version`` command, :doc:`install/config`.

If your version of vim does not include support for python, install a version
which does, :doc:`install/install`.

Auto Complete
=============

The default vim installation (with python support) will support the
omni-completion feature using this keyboard shortcut:

- *Ctrl* X, *Ctrl* O

  Install the SuperTab plugin, :doc:`plugin/supertab`, to use the ``tab`` key
  rather than this rather complicated shortcut.

- A newer version of ``pythoncomplete.vim`` can be downloaded from
  http://www.vim.org/scripts/script.php?script_id=1542

  Copy the file to your ``autoload`` folder, on my workstation:

  ::

    C:\tools\vim\vim71\autoload\

IDE (from *Python with a modular IDE*, see links above)
=======================================================

Jump between your code and python class libraries
-------------------------------------------------

Add the following to ``_vimrc`` (``~/.vimrc`` on linux), and you can use ``gf``
on ``import`` statements (try ``gf`` on ``import urllib``):

  ::

    python << EOF
    import os
    import sys
    import vim
    for p in sys.path:
        if os.path.isdir(p):
            vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
    EOF

``ctags``
---------

See notes on tags, :doc:`plugin/ctags` (particularly the python section).

Code Completion
---------------

Add the following line to your ``.vimrc``:

  ::

    autocmd FileType python set omnifunc=pythoncomplete#Complete

Then all you have to do to use your code completion is hit the un-natural,
wrist breaking, keystrokes *ctrl* *X*, *ctrl* *O*.

I've re-bound the code completion to *ctrl* *space* since we are making vim an
IDE!  Add this command to your ``.vimrc`` to get the better key binding:

  ::

    inoremap <Nul> <C-x><C-o>

Pydoc
-----

pydoc.vim_ Python documentation view and search tool.

Download ``pydoc.vim`` and copy to the vim ``plugin`` folder
(``~/.vim/plugin/`` on linux):

  ::

    copy \download\vim\pydoc.vim c:\tools\Vim\vim72\plugin

If ``pydoc`` is not on your path, add the following to ``_vimrc``:

  ::

    let g:pydoc_cmd="python c:/tools/Python25/Lib/pydoc.py"

To see documentation about, for example, the xmlrpclib module, enter:

  ::

    :Pydoc xmlrpclib

Use the keystrokes *Leader*, ``pw`` and *Leader*, ``pW`` to search for the item
under the cursor. (vim's default *Leader* is ``\``).

Syntax Checking
---------------

Create an *after*, *syntax* folder in ``vimfiles`` (``~/.vim/`` on linux):

  ::

    mkdir C:\tools\vim\vimfiles\after\syntax\
    mkdir ~/.vim/after/syntax

In this folder create a file, ``python.vim``, containing the following:

  ::

    syn match pythonError "^\s*def\s\+\w\+(.*)\s*$" display
    syn match pythonError "^\s*class\s\+\w\+(.*)\s*$" display
    syn match pythonError "^\s*for\s.*[^:]$" display
    syn match pythonError "^\s*except\s*$" display
    syn match pythonError "^\s*finally\s*$" display
    syn match pythonError "^\s*try\s*$" display
    syn match pythonError "^\s*else\s*$" display
    syn match pythonError "^\s*else\s*[^:].*" display
    syn match pythonError "^\s*if\s.*[^\:]$" display
    syn match pythonError "^\s*except\s.*[^\:]$" display
    syn match pythonError "[;]$" display
    syn keyword pythonError         do

Note: The location of ``vimfiles`` can be found in the help system here:

  ::

    :help runtimepath

Make
----

**Note**: This doesn't seem to work:

Add these 2 lines to your ``.vimrc`` so you can type ``:make`` and get a list
of syntax errors:

::

  autocmd BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
  autocmd BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m

You will have the ability to to type ``:cn`` and ``:cp`` to move around the
error list.  You can also type ``:clist`` to see all the errors.

Evaluate
--------

Add the following snippet to your ``.vimrc``:

::

  python << EOL
  import vim
  def EvaluateCurrentRange():
      eval(compile('\n'.join(vim.current.range),'','exec'),globals())
  EOL
  map <C-h> :py EvaluateCurrentRange()

...and you will be able to select some python code and press *ctrl*, *h* to
evaluate it.

Browsing the Source (Tag List)
------------------------------

*Install*

- Make sure ``ctags`` is in your path.  For more information see
  :doc:`plugin/ctags`.
- Download ``taglist_45.zip`` from http://vim-taglist.sourceforge.net/
- Extract the files from the archive into your ``vimfiles`` folder (on Windows
  (``C:\tools\vim\vimfiles\``).  This will create two folders:

  ::

    C:\tools\vim\vimfiles\doc\
    C:\tools\vim\vimfiles\plugin\

  Note: The location of ``vimfiles`` can be found in the help system here:

  ::

    :help runtimepath

- Change into the ``vimfiles/doc/`` folder and run the command:

  ::

    :helptags .

*Usage*

- Type this command to open the tag list:

  ::

    :TlistToggle

- To update the tags (should happen automatically), press ``u`` in the tag
  window.
- To view help:

  ::

    :help taglist

Debugging
---------

Add the following snippet to your ``.vimrc`` and you can now hit *F7* and
*shift*, *F7* to add/remove breakpoints.  Then you just launch your application
with ``!python %`` (percent being the current file).

::

  python << EOF
  def SetBreakpoint():
      import re
      nLine = int( vim.eval( 'line(".")'))

      strLine = vim.current.line
      strWhite = re.search( '^(\s*)', strLine).group(1)

      vim.current.buffer.append(
         "%(space)spdb.set_trace() %(mark)s Breakpoint %(mark)s" %
           {'space':strWhite, 'mark': '#' * 30}, nLine - 1)

      for strLine in vim.current.buffer:
          if strLine == "import pdb":
              break
      else:
          vim.current.buffer.append( 'import pdb', 0)
          vim.command( 'normal j1')

  vim.command( 'map <f7> :py SetBreakpoint()<cr>')

  def RemoveBreakpoints():
      import re

      nCurrentLine = int( vim.eval( 'line(".")'))

      nLines = []
      nLine = 1
      for strLine in vim.current.buffer:
          if strLine == 'import pdb' or strLine.lstrip()[:15] == 'pdb.set_trace()':
              nLines.append( nLine)
          nLine += 1

      nLines.reverse()

      for nLine in nLines:
          vim.command( 'normal %dG' % nLine)
          vim.command( 'normal dd')
          if nLine < nCurrentLine:
              nCurrentLine -= 1

      vim.command( 'normal %dG' % nCurrentLine)

  vim.command( 'map <s-f7> :py RemoveBreakpoints()<cr>')
  EOF

Snippets
--------

*Install*

- Download ``snippy_plugin.vba`` and ``snippy_bundles.vba`` from `snippetsEmu`_
- Create an ``after/ftplugin/`` folder in your ``vimfiles`` folder (on Windows
  (``C:\tools\vim\vimfiles\``)

  Note: The location of ``vimfiles`` can be found in the help system here:

  ::

    :help runtimepath

- Open ``snippy_plugin.vba`` in vim, and run the command:

  ::

    :so %

*Usage*

(for python), type ``def``, *tab*, *method name*, *tab*, etc...

...to install the plugin.  Do the same with ``snippy_bundles.vba``.


.. _`Python with a modular IDE (Vim)`: ../../misc/howto/python/python-with-a-modular-ide-vim.pdf
.. _`John Anderson`: http://blog.sontek.net/2008/05/11/python-with-a-modular-ide-vim/
.. _`Vim: Python Code Folding And My VIMRC`: http://www.amitu.com/blog/2007/july/vim-python-code-folding-and-my-vimrc/
.. _`django + vim`: http://blog.fluther.com/blog/2008/10/17/django-vim/
.. _`Ropevim is a plugin for performing python refactorings in vim`: http://rope.sourceforge.net/ropevim.html
.. _`Python and vim: Make your own IDE`: http://dancingpenguinsoflight.com/2009/02/python-and-vim-make-your-own-ide/
.. _`Vim autocomplete, Django and virtualenv`: http://blog.roseman.org.uk/2010/04/21/vim-autocomplete-django-and-virtualenv/
.. _pydoc.vim: http://www.vim.org/scripts/script.php?script_id=910
.. _`snippetsEmu`: http://www.vim.org/scripts/script.php?script_id=1318
