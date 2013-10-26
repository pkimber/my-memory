ctags - Windows
***************

Install
=======

- Download <<<ec57w32.zip>>> from {{http://ctags.sourceforge.net/}}.
- Extract ``ctags.exe`` to:

  ::

    C:\tools\on-path\

  **Note**: Make sure this folder is added to your Windows system path.

Usage
=====

python
------

To build tags for the python libraries (in this example, the python library
and a project I am working on):

::

  del c:\repository\vim\python.ctags
  ctags -f c:\repository\vim\python.ctags --language-force=Python -R c:\tools\Python25
  ctags -f c:\repository\vim\python-trac-email2trac.ctags --language-force=Python -R t:\core\development\python\trac\email2trac

Note: To get ``ctags`` to work on Windows, I had to:

- Use ``--language-force=Python``
- Use a full path to the python folder (including the drive letter).

vim Configuration
=================

To add the tags to ``vim``, edit the ``_vimrc`` file and add the following
(for the two python example files above):

::

  set tags+=c:/repository/vim/python.ctags
  set tags+=c:/repository/vim/python-trac-email2trac.ctags

