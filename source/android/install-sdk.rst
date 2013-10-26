Install - SDK
*************

Prerequisites
=============

Linux
-----

::

  apt-get install openjdk-6-jre openjdk-6-jdk
  apt-get install ia32-libs

SDK
===

Download the SDK starter package from:
http://developer.android.com/sdk/index.html

Linux
-----

I downloaded ``adt-bundle-linux-x86_64.zip``

Extract to a convenient location:

::

  cd ~/bin/
  tar xzf ~/Downloads/android/adt-bundle-linux-x86_64.zip

The following folder will be created:

::

  ~/bin/adt-bundle-linux-x86_64/

Windows
-------

- I downloaded ``android-sdk_r04-windows.zip``.
- Extract to a convenient location:

  ::

    C:\tools\android-sdk-windows\

  Add the SDK to the ``PATH``:

  ::

    C:\tools\android-sdk-windows\

Eclipse
=======

Run the *Android Developer Tools*:

::

  cd ~/bin/adt-bundle-linux-x86_64/eclipse
  ./eclipse

Issues
======

Failed to fetch URL https
-------------------------

When starting the *Android SDK and AVD Manager*, the *Refresh Sources* window
displays the following error message:

::

  Failed to fetch URL https://dl-ssl.google.com/android/repository/repository.xml,
  reason: HTTPS SSL error. You might want to force download through HTTP in the settings.

To solve this issue, *Close* the *Refresh Sources* window, *Cancel* the *Choose
Packages to Install* window and click *Settings* in the *Android SDK Manager*
window.  Tick the checkbox:
``Force https://... sources to be fetched using http://``.
Click *Save & Apply*.  Click *Available Packages* followed by *Refresh*.  You
should now find the available packages in the *Sites, Packages and Archives*
list.
