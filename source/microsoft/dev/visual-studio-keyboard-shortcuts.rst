Visual Studio - Keyboard Shortcuts
**********************************

Links
=====

`Visual Studio .NET 2003 and 2005 Keyboard Shortcuts`_

General
=======

======================  =======================================================
F12                     Go to Declaration `F12 - Go To Definition`_
*Ctrl* + F7             Compile the current file.
*Ctrl* + *-*            Move to previous edit point
*Ctrl*, *Shift*, *-*    Move forwards to last cursor location
======================  =======================================================

Bookmarks
=========

======================  =======================================================
*Ctrl* K, *Ctrl* K      Toggle bookmark
*Ctrl* K, *Ctrl* N      Next bookmark
======================  =======================================================

Command Windows
===============

`Hacking Visual Studio, Master the Command Window`_

To open the command window, *Ctrl*, *Alt*, *A* (``View.CommandWindow``).

======================  =======================================================
``open`` *filename*     To open *filename*.
======================  =======================================================

Debug
=====

======================  =======================================================
F5                      Continue.
F9                      Toggle breakpoint.
F10                     Step over.
*Ctrl*, F10             Run to cursor.
F11                     Step into.
*Shift*, F11            Step out.
======================  =======================================================

The watch windows support several special variables and formats that can help
you:

+--------------+--------------------------------------------------------------+
| @err         | displays the value of GetLastError( )                        |
+--------------+--------------------------------------------------------------+
| var,hr       | will convert a variable to an HRESULT.  For instance, the    |
|              | value 0 is displayed as S_OK, can be used with GetLastError  |
+--------------+--------------------------------------------------------------+
| var,wm       | will convert a variable to a windows message.                |
|              | For instance, the value 15 is displayed as WM_PAINT.         |
+--------------+--------------------------------------------------------------+
| var,format   | format can be s (string), su (string Unicode), c (character) |
|              | x (hex), o (oct), d or i (dec, if in hex view), u (unsigned) |
|              | f (float), g (special float), e (scientific float)           |
+--------------+--------------------------------------------------------------+
| @register    | register can be things like al, ah, ax, eax, eip, etc...     |
+--------------+--------------------------------------------------------------+

Editor
======

+-------------------------+---------------------------------------------------+
| *Alt*, *Shift*, *Enter* | Maximize your code window                         |
+-------------------------+---------------------------------------------------+
| *Alt*, *Drag*           | Hold down the *Alt* key while dragging with the   |
|                         | mouse to select a block of text (rather than line |
|                         | by line).                                         |
+-------------------------+---------------------------------------------------+
| *Ctrl* C                | With no text selected, copies the curent line.    |
+-------------------------+---------------------------------------------------+
| *Ctrl* K, *Ctrl* C      | Comment Selection                                 |
+-------------------------+---------------------------------------------------+
| *Ctrl* K, *Ctrl* F      | Format Selection                                  |
+-------------------------+---------------------------------------------------+
| *Ctrl* K, *Ctrl* U      | Un-comment Selection                              |
+-------------------------+---------------------------------------------------+
| *Ctrl* R                | Switch on word wrap.  To switch on line numbers:  |
|                         | *Tools*, *Options*, *Text Editor*, *C/C++*,       |
|                         | *Line numbers*                                    |
+-------------------------+---------------------------------------------------+

Task List
=========

======================  =======================================================
F8                      Next Task
*Shift* F8              Previous Task
======================  =======================================================


.. _`Visual Studio .NET 2003 and 2005 Keyboard Shortcuts`: http://www.codinghorror.com/blog/archives/000315.html
.. _`F12 - Go To Definition`: http://blogs.msdn.com/lukeh/archive/2007/06/04/f12-go-to-definition.aspx
.. _`Hacking Visual Studio, Master the Command Window`: http://www.ondotnet.com/pub/a/dotnet/excerpt/vshacks_chap1/

