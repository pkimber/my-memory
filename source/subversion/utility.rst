Utility
*******

svn Folders
===========

Linux
-----

`Recursively delete .svn folders`_

From the Linux shell (or cygwin):

::

  find . -type d -name '.svn' -print0 | xargs -0 rm -rdf

Also see `Recursively delete .svn directories`_

P.B. says to use this command:

::

  find . -name ".svn" | xargs rm -R

Windows
-------

`Powershell vs Command Prompt on Deleting SVN Directories`_

- Powershell

  ::

    Get-ChildItem -Recurse -force |where {$_.PSIsContainer -AND $_.Name -match "svn"} | foreach ($_) {remove-item -force -recurse $_.fullname}

- Command Prompt

  ::

    for /r YOURPATH %f in (.svn) do rd /s /q %f

- Tortoise

  `unversion a working copy`_


.. _`Recursively delete .svn folders`: http://www.broobles.com/blog/posts/36
.. _`Recursively delete .svn directories`: http://www.anyexample.com/linux_bsd/bash/recursively_delete__svn_directories.xml
.. _`Powershell vs Command Prompt on Deleting SVN Directories`: http://geekcowboy.com/archive/2007/01/06/powershell-vs-command-prompt-on-deleting-svn-directories.aspx
.. _`unversion a working copy`: http://tortoisesvn.net/node/343

