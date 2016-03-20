WiX Installer
*************

From `Getting Started - The Software Package`_

Download and install ``wix310.exe`` from http://wixtoolset.org/releases/

Create your ``wix`` file.

.. tip:: To create a UUID, use ``uuidgen.exe`` e.g.
         ``"c:\Program Files (x86)\Windows Kits\8.0\bin\x64\uuidgen.exe"``

To build the MSI::

  "C:\Program Files (x86)\WiX Toolset v3.10\bin\candle.exe" your-wxs-file.wxs
  "C:\Program Files (x86)\WiX Toolset v3.10\bin\light.exe" your-wxs-file.wixobj


.. _`Getting Started - The Software Package`: https://www.firegiant.com/wix/tutorial/getting-started/the-software-package/
