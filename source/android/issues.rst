Issues
******

Activity class does not exist
=============================

Trying to install two applications and had various errors including:

::

  Error: Activity class {com.sample/com.sample.BasicIntent} does not exist.

...and...

::

  [2009-08-30 14:40:40 - BasicIntent] ActivityManager: Starting: Intent { comp={com.sample/com.sample.BasicIntent} }
  [2009-08-30 14:40:40 - BasicIntent] ActivityManager: Error type 3
  [2009-08-30 14:40:40 - BasicIntent] ActivityManager: Error: Activity class {com.sample/com.sample.BasicIntent} does not exist.
  [2009-08-30 14:42:54 - com.android.ide.eclipse.common.project.AndroidManifestParser] Parser exception for /BasicIntent/AndroidManifest.xml: Element type "activity" must be followed by either attribute specifications, ">" or "/>".
  [2009-08-30 14:42:54 - BasicIntent] Error in an XML file: aborting build.

Both applications had the same ``package`` name in the manifest:

::

  <?xml version="1.0" encoding="utf-8"?>
  <manifest
      xmlns:android="http://schemas.android.com/apk/res/android"
      package="com.sample"

To solve the issue, I used different ``package`` names for each application:

::

  package="com.sample.app"
  package="com.sample.intent"

Animation
=========

There is a bug in the 1.5 version of the emulator.  It needs to be re-started
each time there is a change in the animation settings.

Debug Certificate expired
=========================

To solve this problem:

::

  rm ~/.android/debug.keystore

For details, see `Debug Certificate expired`_

.. _`Debug Certificate expired`: http://stackoverflow.com/questions/6645924/android-sdk-in-eclipse-gives-error-about-expired-sertificate

Unable to resolve superclass...
===============================

If using the Google Map API, make sure you have included the following in your
``AndroidManifest.xml`` file:

::

      <uses-library
          android:name="com.google.android.maps" />
  </application>

R cannot be resolved
====================

Start by checking the *Problems* tab to make sure there are no errors in the
XML files.

Eclipse sometimes likes to add an ``import android.R`` statement at the top of
your files that use resources, especially when you ask Eclipse to sort or
otherwise manage imports.  This will cause your make to break. Look out for
these erroneous import statements and delete them.

For details, see `R cannot be resolved`_

If you create packages below the package shown in the manifest, then import the
auto-generated ``R`` file e.g. ``import my.package.R``

USB Driver for Windows
======================

If Windows cannot install the USB driver then see :doc:`device`


.. _`R cannot be resolved`: http://stackoverflow.com/questions/885009/r-cannot-be-resolved-android-error
