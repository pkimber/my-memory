Testing
*******

Integration Tests
=================

::

  ../../resources/misc/howto/android/SampleIntegrationTest.java

Unit Testing
============

Set-up
------

- In Eclipse, right click on the project and create a new *Source Folder*
  called ``test``.
- Write the unit tests as normal in this folder...
- In the ``AndroidManifest.xml`` file, add the following within the
  ``application`` element:

  ::

        <uses-library android:name="android.test.runner" />
    </application>

- In the ``AndroidManifest.xml`` file, add the following within the
  ``manifest`` element:

  ::

    <instrumentation
        android:name="android.test.InstrumentationTestRunner"
        android:targetPackage="uk.co.mycompany.myapp"
        android:label="MyAppTests" />
    </manifest>

  Note: Update the package name so it is good for your project.

Run
---

To run the unit tests, right click on the project, select *Run As* followed by
*Android JUnit Test*.

The unit tests should run within the Android emulator.
