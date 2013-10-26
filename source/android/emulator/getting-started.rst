Getting Started
***************

Create
------

The easiest way to create an AVD image is through Eclipse button which opens
the *Android Virtual Device (AVD) Manager*.

- The device will be created in your ``users`` folder e.g:

  ::

    c:\Users\Patrick\.android\avd\

Usage
-----

To start the emulator:

- Run ``emulator.exe`` with the ``-avd`` parameter followed by the name of your
  *Android Virtual Device*:

  ::

    emulator.exe -avd patavdthree

**Note**:

- The ``avd`` files will be in the folder:

  ::

    c:\Users\Patrick\.android\avd\

- The ``emulator.exe`` file is in your Android SDK e.g:

  ::

    C:\tools\android-sdk-windows-1.5_r3\tools\

  Probably easiest to add this folder to your ``PATH``...

- Do **not** append the ``avd`` extension (the actual file-name is
  ``patavdthree.avd``).  If you do, you will get a cryptic error like this:

  ::

    emulator: ERROR: virtual device name contains invalid characters

Server
======

See *workstation* below...

Workstation
===========

It is not possible for the emulator to access the workstation using
``localhost`` (or ``127.0.0.1``).  This is because these addresses refer to the
emulator itself.

To access a server running locally on the workstation, use the special reserved
address, ``10.0.2.2`` e.g. http://10.0.2.2:8080/.
