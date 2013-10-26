ctags
*****

Links
=====

- `Exuberant Ctags`_
- `Tip #94: Questions & Answers about using tags with Vim`_
- `Go to Definition in Vim for Python using Ctags, Done Right`_
- :doc:`ctags-windows`

Install
=======

::

  sudo apt-get install exuberant-ctags

ctags Configuration
===================

Create a ``~/.ctags`` file:

::

  --python-kinds=-iv
  --exclude=build
  --exclude=dist

*Note*: The first line turns off tags generation for variables and imports.
The second and third lines turn off generation of tags in the named folders,
since you almost certainly want to ignore source code in those directories.

Usage
=====

General
-------

To build tags for all files in the current folder and sub-folders:

::

    ctags -R
    ctags -a -R ~/dev/modules/my-python-app/

In the example above ``-a`` appends to the current ``tags`` file.

Java
----

To build tags for all the ``java`` files in the current folder:

::

  ctags *.java

python
------

::

  ctags -R .
  ctags -a -R ~/dev/web/modules/region/

Note:

- The default command will create a file called ``tags``.  This is the name
  that ``vim`` will look for.

vim Configuration
=================

Case insensitive tag matching
-----------------------------

If your ``.vimrc`` requests case-insensitive searching by setting
``ignorecase`` (aka ``ic``), then the above tag matching will also be case
insensitive.  This is irksome, because searching for the definition of
property ``.matrix`` will present you with a menu asking you to choose between
property ``.matrix`` and class ``Matrix``, rather than just jumping to the
property.

To fix this, add this to your ``.vimrc``:

::

  map <silent> <c-]> :set noic<cr>g<c-]>:set ic<cr>

This maps your *Ctrl* *]* key to turn off case-insensitivity while it does the
jump to tag, then turn it back on again. Now pressing *Ctrl* *t* will jump
directly to your property, only presenting menus on the occasion when the tag
you search for is defined in more than one place using precisely the same
name.

Shortcuts
---------

From this blog entry, `Python with a modular IDE (Vim)`_.

I also have 2 tweaks in my ``.vimrc`` so you can use *ctrl*, *left arrow*
and *ctrl* *right arrow* to move between the files with more natural key
bindings:

::

  map <silent><C-Left> <C-T>
  map <silent><C-Right> <C-]>

VIM Commands
============

::

  :tag <tagname>               jump to a tag.
  Ctrl ]                       jump (after positioning the cursor over a tag)
  g Ctrl ]                     jump (or list if more than one match)

  pop                          come back from a tag jump.
  Ctrl t                       "

  :ts                          list matches and allow user to select.
  :tags                        list the contents of the tag stack?

  vim -t DispPageDialog        open the file and find the tag


.. _`Exuberant Ctags`: http://ctags.sourceforge.net/
.. _`Tip #94: Questions & Answers about using tags with Vim`: http://www.vim.org/tips/tip.php?tip_id=94
.. _`Python with a modular IDE (Vim)`: http://blog.sontek.net/2008/05/11/python-with-a-modular-ide-vim/
.. _`Go to Definition in Vim for Python using Ctags, Done Right`: http://tartley.com/?p=1277

