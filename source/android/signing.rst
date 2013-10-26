Signing
*******

Note
====

`Signing Strategies`_:

- You should ensure that your key has a validity period that exceeds the
  expected lifespan of that application...
- **A validity period of 25 years or more is recommended** (*A value of
  10,000 days or greater is recommended*)...
- If you are publishing your application for the Android Market, your
  keystore must have a validity period ending after 22 October 2033.

Key
===

Eclipse
-------

You can create a key store (and key) by right clicking on the Android project
in Eclipse, select *Android Tools*, *Export Signed Application Package*...

Command Line
------------

::

  keytool -genkey -v -keystore mycompanydev.keystore -alias 4thscreendev -keyalg RSA -validity 10000

Sign Up for the Android Maps API
================================

- Get the fingerprint of your certificate:

  ::

    c:\>keytool -list -keystore C:\repository\android\key\mycompanydev.keystore
    Enter keystore password:

    Keystore type: JKS
    Keystore provider: SUN

    Your keystore contains 1 entry

    mycompanydev, 26-Aug-2009, PrivateKeyEntry,
    Certificate fingerprint (MD5): D5:1D:43:34:D4:5F:41:22:44:66:D0:25:60:25:B0:8D

  Note: This process didn't work for me.  I think it might have something to do
  with the Eclipse IDE settings for Android.  I had to use the debug keystore
  (press *Enter*, or try ``android``, when asked for the *keystore password*):

  ::

    keytool -list -keystore C:\Users\Patrick\.android\debug.keystore

- Browse to http://code.google.com/android/maps-api-signup.html
- Paste your *certificate's MD5 fingerprint* into the box and click the
  *Generate API Key* button:

  ::

    Thank you for signing up for an Android Maps API key!
    Your key is:
    0ZTwMTa0IihJDsoBHY4AAbxfVPsWo1R3LNKxrrQ
    This key will work for all apps signed with your certificate whose fingerprint is:
    D5:1D:43:34:D4:5F:41:22:44:66:D0:25:60:25:B0:8D
    Here is a sample xml layout to get you started on your way to mapping glory:
        <com.google.android.maps.MapView
            android:layout_width="fill_parent"
            android:layout_height="fill_parent"
            android:apiKey="0ZTwMTa0IihJDsoBHY4AAbxfVPsWo1R3LNKxrrQ"
        />

Signing
=======

- Open your ``AndroidManifest.xml`` file and increment the value of the
  ``android:versionCode`` element.

  **Note**: This must be incremented on every release.

  If required, amend the ``android:versionName`` element.  This is a string
  value that represents the release version of the application code, as it
  should be shown to users...

- Right click on the Android project in Eclipse, select *Android Tools*,
  *Export Signed Application Package*...

  Use the keystore and key created in the steps above.

  An ``apk`` file will be created e.g:

  ::

    C:\repository\android\app\myapp.apk


.. _`Signing Strategies`: http://developer.android.com/guide/publishing/app-signing.html

