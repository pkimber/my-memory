Getting Started
***************

Links
=====

- `Introduction to Windows PowerShell`_
- `PowerShell Community Extensions`_

Environment Variables
=====================

List
----

::

  dir env:
  Get-ChildItem env:

Usage
-----

::

  $env:TEMP
  [io.path]::GetFullPath($env:temp)
  ${env:TEMP}

Set
---

::

  $env:patrick="John"

File system
===========

Directory listing:

::

  dir
  ls
  Get-ChildItem

...to list all items in subfolders:

::

  Get-ChildItem -recurse

...suppose you want information about only the ``.txt`` and ``.log`` files
found in a folder:

::

  Get-ChildItem c:\scripts\*.* -include *.txt,*.log

Home
----

To change into your home folder:

::

  cd ~

Variables
=========

Current Path:

::

  $pwd

Set
---

::

  $patrick=42

Remove
------

Note that, with the ``Remove-Variable`` ``cmdlet``, we need to leave off the
``$`` when indicating the variable to be removed:

::

  Remove-Variable patrick


.. _`Introduction to Windows PowerShell`: http://www.computerperformance.co.uk/powershell/index.htm
.. _`PowerShell Community Extensions`: http://www.codeplex.com/PowerShellCX

