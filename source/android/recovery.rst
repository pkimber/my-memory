Android Recovery
****************

Enable Fastboot Bootloader Mode:

- press and hold Volume Down and Power simultaneously.  Don't release the
  buttons until the Fastboot Mode menu appears.
- when entering recovery mode, you will see a green Android chilling on his
  back with a red warning sign.  Press and hold the phones Power button and
  then press once Volume Up.

.. tip:: The following might work better if you use USB2

From the linux computer with the Android SDK installed::

  sudo -i

Add the folder containing ``fastboot`` to the system path e.g::

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
