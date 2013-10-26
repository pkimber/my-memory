Commands
********

Startup
=======

::

  vi + file          Open file at last line
  vim -O file1 file2 Open two files in a vertical split.

Basic
=====

::

  ctrl \[            is equivalent to Esc

::

  w                  forward a word
  b                  backward a word
  e                  move to the end of the word.
  0                  (zero) move to the beginning of the current line.
  numG               move to line number 
  gg                 move to the beginning of the file (in <<<vi>>> use <<<:1>>>).
  G                  move to the last line in the file
  H                  move to the top of the screen
  M                  move to the middle of the screen
  L                  move to the bottom of the screen
  \{                 Next paragraph.
  \}                 Previous paragraph.
  #                  same as * - but moves to previous item
  ma                 make a bookmark named a
  `a                 goto bookmark a
  'a                 goto the start of the line for bookmark a
  `.                 goto the cursor position where you last edited
  '.                 goto the line you last edited
  ``                 return you to the position you started from (after a jump command e.g. 'G').
  :marks             To list all the marks.
  ctrl o             Previous mark (o for older).
  ctrl i             Next mark (i beside o).

Buffers
=======

::

  ls                 or 'buffers' to list current buffers.
  b                  followed by buffer number (or name).  try 'b', 'tab' to cycle between open buffers.
  bd                 close buffer
  ctrl 6             or ctrl ^ to switch to the previously edited buffer.

Case
====

::

  Vu                 lowercase line
  VU                 uppercase line
  g~~                invert case

diff
====

::

  vim -d file1 file2       compare the two files using vimdiff.
  :vert diffsplit file2    open first file, then 'diffsplit'.
  :diffget           or 'do', to merge the difference from the other file into the file where the cursor is.
  :diffput           or 'dp' to merge the other way (see previous command).
  :diffthis          do this in two buffers to compare open files
  do                 get changes from other window into the current window.
  dp                 put the changes from current window into the other window.
  ]c                 jump to the next change.
  [c                 jump to the previous change.

Folding
=======

Must set 'set foldmethod=indent':

::

  zm                 fold a level
  zr                 un-fold a level.
  zR                 open all folds.
  zM                 fold all...
  zo                 open a specific fold
  zc                 close a specific fold

How to enter insert mode...
===========================

::

  I                  insert text at the beginning of the line
  c<motion>          replace the text selected by motion e.g. cw or c$

Replace Mode
============

::

  R                  Replace mode (overtype/overwrite).

Scrolling
=========

::

  zt                 (or z 'enter') set current line at top of window.
  zz                 (or z.) set current line at centre of window.
  zb                 (or z-) set current line at bottom of window.

Selection...
============

::

  v                  Select characters
  V                  Linewise selection mode - press Shift V, let go and then select
  ctrl v             block selection (column edit in ultraedit).  To insert a string after selecting your columns, <<<I>>>, <string>, <escape>.  Note: Not sure this works on Windows!

Cut, Copy, Paste and Delete
===========================

::

  c                  same as d, delete - but leaves editor in insert mode
  cc                 cuts the whole line and leaves editor in insert mode
  C                  cut from the cursor to the end of the line and leave in insert mode...
  dh                 delete character to the left of the cursor position.
  dw                 delete words forward
  db                 delete words backwords
  d0                 (zero) delete from the cursor to the beginning of the line.
  d/fred/            delete until 'fred' (press 'Enter' after)
  D                  cut from the cursor to the end of the line
  s                  cut the current character and leave in insert mode
  ]p                 the text you paste matches the indentation level - or try 'Esc', ':insert', 'Enter', then paste, then 'Esc'.

Clipboards (registers)
======================

::

  :reg               to see registers
  "kyy               copy current line (yy) into register k ("kyw) for current word
  "+yy               to copy to the clipboard (could try "*yy if this doesn't work).
  "kp                paste contents of register k
  "*p                linux = paste selection, windows = paste clipboard
  "+p                paste clipboard
  ctrl r, %          (insert mode), paste the name and path of the current file.

Programming/Development
=======================

::

  %                  will find the matching bracket
  \>\>               indent text
  \<\<               unindent text
  \>                 indent selected text
  \<                 unindent selected text
  ga                 display ascii/hex/octal value of character under cursor.
  gd                 goto definition (or declaration) of function of variable
  ==                 indent (current line or selection) http://vim.sourceforge.net/tips/tip.php?tip_id=83, Tip #83
  =%                 auto tab nested ifs and loops (put the cursor on the first bracket or select first).

Search
======

::

  /searchstring      search forward
  ?searchstring      search backwords
  f                  search forward in the line for the next character you type.
  F                  search backwards in the line for the next character you type.
  n                  repeat search
  N                  repeat search (in reverse)
  set hlsearch       Highlight search on...
  set nohlsearch     Highlight search off...

Search and Replace
==================

::

  :%s/searchstring/replacestring/g

::

  %                  Search the whole file
  s                  Search and replace
  g                  replace every occurrence on a line
  [i                 search in include files.
  [<Tab>             to jump to the include file.
  \\=@a              to replace with the contents of register 'a' (backslash, equals, ampersand, register).

To replace within a selection, enter visual mode using ``v``, highlight the
section, enter command mode (``:``):

::

  s/searchstring/replacestring/g

Spelling
========

::

  :set spell         turn on (<<<:set nospell>>> to turn off.
  ]s                 next misspelled word (<<<[s>>> for previous).
  zg                 add word to the dictionary.
  z=                 view spelling additions.

Splits
======

::

  :sp filename       Splits screen horizontally and open file
  :vsp filename      As previous - open vertically
  ctrl W, W          Moves to the next split (as does ctrl W ctrl W)
  ctrl w, x          exchange current window with the next one.
  ctrl W, K          Moves to file - above (<K> is the normal down key).
  ctrl W, J          Moves to file - below (<J> is the normal down key).

  :res 30            Set height to 30
  :vertical res 30   Set width to 30
  5 ctrl W +         Makes the split 5 lines bigger
  ctrl W _           Maximise the current split (underscore)
  5 ctrl W _         Sets the height of the current window

  :sp                Splits the current window
  :close             Close the current window
  :only              Closes every window apart from the current one
  :new               Creates a new window with an empty file
  :vnew              Creates a new vertical window with an empty file

Tabs
====

Vim 7 also has tabs in it.  So you can edit multiple files without splitting:

::

  :tabnew
  :tabnew browse
  ctrl PageUp
  ctrl PageDown

Tags
====

::

  ctrl ]             jump to (open) a tag.
  ctrl T             return from a tag (or ctrl O) (case doesn't seem to matter).

Explorer
========

::

  :cd                Change the current directory
  :pwd               What is the current directory
  :cd -              To go back to the previous directory
  gf                 If cursor is on a filename - then gf will go to the file
  :Explore           Open explorer.
  :Sexplore          Open explorer in a split window.
  ctrl 6             Return to explorer window
  :edit .            Edit current directory (open explorer)
  :e ..              Edit parent directory (open explorer)
  o                  Opens the file in a new split
  s                  Sort (the heading shows what the sort order is)
  i                  Toggle view (when exploring files).

grep
====

::

  :vimgrep YourPattern **/*.apt | copen   check current folder with 'pwd' first.  'cnext' ('cn') and 'cprev' to move through buffers.

Reading command output
======================

::

  :r <textfile>      Insert text from <textfile> into the current buffer
  :r ! <command>     Read in the output of shell applications.  Use <<<%>>> to refer to the current file.

Print
=====

::

  :hardcopy

Settings
========

::

  :set               Show all settings which are not set to the default.

Text Editing
============

::

  :set tw=0 wrap linebreak

Word Wrap
---------

To turn on *nice* word-wrap:

::

  set wrap on
  set nolist
  set lbr

sort
====

highlight the area you want to sort:

::

  :sort              the command will look like this: <<<:'\<,'\>:sort>>>.
  :sort n            sort by the first decimal in the line.
  :sort i            ignore case.
  :sort u            deletes duplicate lines.

Undo/Redo
=========

::

  u                  undo
  U                  undo changes on current line.
  ctrl r             redo the last change.
