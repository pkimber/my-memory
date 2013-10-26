Symbolic Links
**************

Links
=====

- http://schinagl.priv.at/nt/hardlinkshellext/hardlinkshellext.html
- http://technet.microsoft.com/en-us/sysinternals/bb896768.aspx

Install
=======

- Download ``Junction.zip`` from `Windows Sysinternals`_

- Unzip the contents of the archive.  I extracted to:

  ::

    C:\tools\on-path\

Usage
=====

Create
------

e.g. To create a symbolic link (an NTFS junction) to the Django admin,
``media`` folder so it can be served by the Apache HTTP server:

::

  cd C:\tools\Apache2.2\htdocs\
  junction.exe media \tools\Python25\lib\site-packages\djang\contrib\admin\media

Delete
------

To delete a junction:

::

  junction.exe -d media


.. _`Windows Sysinternals`: http://technet.microsoft.com/en-us/sysinternals/bb896768.aspx

