Device
******

 your application on a device:

In the ``AndroidManifest.xml`` file, add ``android:debuggable="true"`` to the
``<application>`` element.

Turn on "*USB Debugging*" on your device.  On the device, go to the home
screen, press *MENU*, select *Settings*, *Applications*, *Development*, then
enable *USB debugging*.

On the latest devices, you will need to touch the build number in *About
tablet* 7 times before developer options are available!

Set-up your device:

- Connect your Android device via USB.
- When the Found New Hardware Wizard appears, you'll be asked if you'd like
  Windows Update to search for software. Select *No, not this time* and click
  *Next*.
- Select *Install from a list or specified location* and click *Next*.
- Select Search for the best driver in these locations.  Browse to the
  ``usb_driver/x86`` in the SDK package.  If you have a 64 bit operating
  system, install the driver in ``usb_driver/amd64``
- Click *Finish*.  The system should install the driver files as necessary.
  Your machine may require a reboot.
- You can verify that your device is connected by executing ``adb devices``
  from your SDK ``sdk/platform-tools`` directory.  If connected, you'll see the
  device name listed as a ``device``.

If using Eclipse, select run or debug as usual. You will be presented with a
Device Chooser dialog that lists the available emulator(s) and connected
device(s).  Select the device to install and run the application there.

Issues
======

New Device
----------

If using a new device on your Windows workstation, you will need to right
click on *Android Composite ADB Interface* in the *Device Manager*.  Choose
*Uninstall* and tick the *Delete the driver software for this device*.  After
doing this, you will need to install the *USB driver* (see below)...

USB driver
----------

If Windows cannot install the USB driver then open the *Android SDK Manager*
and install the *Google USB Driver*.

When Windows ask you to insert a disk, browse to:

::

  adt-bundle-windows-x86-20130219\sdk\extras\google\usb_driver\

USB mode
--------

To change the USB mode, open the notifications panel and touch
*Connected as...*.  This will allow you to change the type of connection.

On Android 4.3, *Jelly Bean*, go to *Settings*, *Storage*, click the menu button in the top
right hand corner, select *USB computer connection*.
