Tips
****

Links
=====

Several of these tips from `My favorite VIM tips by Rico`_:

Commenting Multiple Lines
=========================

- Highlight the lines you want to comment out.
- ``:``, the status line will become ``:'<,'>``.
- Complete the line as below, followed by the *Enter* key:

  ::

    :'<,'>s/^/#/g

Spaces
======

Remove all trailing whitespace at end of lines:

::

  :%s/\s\+$//

Note: ``\s`` finds whitespace (a space or a tab), and ``\+`` finds one or more
occurrences.

Tabs
====

To replace tabs with spaces:

::

  :retab

Type Correction
===============

Say you want to enter ``the`` but instead you type ``teh``.  To correct the
typo:

- exit edit mode
- move cursor to the letter ``e``.
- enter commands ``xp``.


.. _`My favorite VIM tips by Rico`: http://ricochen.wordpress.com/2010/01/02/my-favorite-vim-tips/
