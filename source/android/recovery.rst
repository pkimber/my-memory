Android Recovery
****************

Download Android Studio:
http://developer.android.com/sdk/index.html

- Extract
- Run
- The SDK will be downloaded.  This might be an old version!

Set-up the linux USB so it could see my phone.  I followed the
`Setting up a Device for Development`_ instructions::

  sudo -i
  # list usb devices - make sure you can see a google device
  lsusb
  # set-up udev rules for google devices
  vim /etc/udev/rules.d/51-android.rules

Add the following::

  SUBSYSTEM=="usb", ATTR{18d1}=="0bb4", MODE="0666", GROUP="plugdev"

.. note:: The ``ATTR`` value in this example if for Google.  Other
          manufacturers are listed on the web page (see above) under
          *USB Vendor IDs*.  You can also find the vendor ID by plugging in
          your USB device and running ``lsusb``.

Update file permissions::

  chmod a+r /etc/udev/rules.d/51-android.rules

Another online article said to reload the ``udev`` interface (not sure if this
helped or not)::

  sudo -i
  udevadm control --reload

.. _`Setting up a Device for Development`: http://developer.android.com/tools/device.html#setting-up

Enable Fastboot Bootloader Mode:

- press and hold Volume Down and Power simultaneously.  Don't release the
  buttons until the Fastboot Mode menu appears.

I didn't need recovery mode, but if you do:

- when entering recovery mode, you will see a green Android chilling on his
  back with a red warning sign.  Press and hold the phones Power button and
  then press once Volume Up.

.. tip:: The following might work better if you use USB2

From the linux computer with the Android SDK installed::

  sudo -i

Add the folder containing ``fastboot`` to the system path e.g::

  export PATH=/home/patrick/Android/Sdk/platform-tools/:$PATH

  # An older version of the SDK put 'platform-tools' into this folder:
  export PATH=/home/patrick/bin/android-studio/sdk/platform-tools/:$PATH

Unlock the phone::

  fastboot oem unlock

On the phone *Restart bootloader*.  You will then be asked if you want to
unlock.  You need to say yes!

Download the factory image update from
https://developers.google.com/android/nexus/images

Extract the file into a convenient folder e.g::

  /home/patrick/repo/temp/hammerhead-lmy48b

(still as ``root``), change into the folder and install the update e.g::

  cd /home/patrick/repo/temp/hammerhead-lmy48b/
  ./flash-all.sh

.. warning:: Wait for the ``flash-all`` command to complete before continuing.
             It will say something like ``finished. total time: 139.047s``.

Lock the phone::

  fastboot oem lock
