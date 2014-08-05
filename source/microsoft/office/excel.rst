Excel
*****

CSV Import
==========

To force Excel to start the *Text Import Wizard* when importing a CSV file,
rename the file so it has a ``txt`` extension.

Note: If the user has file extensions hidden, they can still use Notepad to
open the file and *Save As* ``txt``...

Date Function
=============

Return the number of days between two dates (based on a 360-day year):

::

  =DAYS360(A1,A2,TRUE)

::

  ../../images/howto/microsoft/excel-days360.gif

Paste
=====

When you paste data into Excel, a little *paste* icon will appear at the bottom
right of the visible selection.  Click this to use the text import wizard on
the contents of your clipboard.

