Debug Bridge (adb)
******************

.. highlight:: java

Logging
=======

`Android Debug Bridge, Enabling logcat Logging`_

To view the log for the currently running emulator:

::

  cd adt-bundle-linux-x86_64/sdk/platform-tools/
  ./adb logcat

Note: If using Eclipse, you can access logging through the *DDMS* perspective.

Filtering
---------

Here's an example of a filter expression that suppresses all log messages
except those with the tag "``ActivityManager``", at priority "``Info``" or
above, and all log messages with tag "``MyApp``", with priority "``Debug``" or
above.  The final element in the expression, ``*:S``, sets the priority level
for all other tags to "``silent``":

::

  adb logcat ActivityManager:I MyApp:D *:S


.. _`Android Debug Bridge, Enabling logcat Logging`: http://developer.android.com/guide/developing/tools/adb.html#logcat
