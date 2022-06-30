Visual Studio
*************

.. Links
.. =====
..
.. Sample wxs file :download:`../../../misc/howto/microsoft/dev/Product.wxs`

Install
=======

Download and install WiX (:doc:`getting-started`).

Re-start Visual Studio and you will be able to create a new *WiX Project*.

Items
=====

To add new items to the installer project, right click on the project node
followed by *Add*, *New Item*.

Debug
=====

`Performing a logged MSI install to debug WiX errors`_

::

  msiexec /i bin\release\installer.msi /l*v Install.log

User Interface
==============

`Using Built-in WixUI Dialog Sets`_

To add a minimal user interface,

- Update the ``wxs`` file:

  ::

            <UIRef Id="WixUI_Minimal" />
        </Product>
    </Wix>

- If you are on the command line, add ``-ext WixUIExtension`` to the call to
  ``light.exe``.
- If you have a WIX project in visual studio, add a reference to
  ``WixUIExtension`` by right clicking on ``References`` in the Solution
  Explorer.

Notes...
========

- Package GUIDs need to be different with each package you create.  To make it
  easier and less likely to forget to issue a new one, we can instruct WiX to
  autogenerate one by typing an asterisk - but remember, this only applies to
  package GUIDs: all other GUIDs will need to stay unique and kept recorded for
  times to come:

  ::

    <Package Id='*' Keywords='Installer'

- Setting ``EmbedCab`` to ``yes`` will embed the ``cab`` file into the ``msi``
  file creating a single self-contained file for download or shipment on media.
- Identifiers (``Id``) must be unique because we will cross-reference them all
  across the WiX source file....
- The *component* is the atomic unit of things to be installed.  A component
  should only contain items that belong together so strongly that they always
  need to be installed or removed together.

Utility
=======

heat
----

::

  cd c:\projects\ie\AddOn\Voucher\Release
  "c:\Program Files\Windows Installer XML v3\bin\heat" file Voucher.dll -srd -gg -dr MyFolder -cg MyGroup -out MyGroup.wxs



.. _`Performing a logged MSI install to debug WiX errors`: http://www.fscked.co.uk/index.php/2008/11/performing-a-logged-msi-install-to-debug-wix-errors/
.. _`Using Built-in WixUI Dialog Sets`: http://wix.sourceforge.net/manual-wix3/WixUI_dialog_library.htm
