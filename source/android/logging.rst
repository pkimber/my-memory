Logging
*******

Links
=====

- Android - Debug Bridge (adb), doc:`emulator/debug-bridge`
- `Log - JavaDoc`_
- `Stripping Log out of production`_ Take particular note of the comments by
  Dianne Hackborn.

Sample
======

::

  public class BasicImageMap extends Activity {

      private static final String TAG = "BasicImageMap";

      public void onCreate(Bundle savedInstanceState) {
          super.onCreate(savedInstanceState);
          setContentView(R.layout.main);
          Log.i(TAG, "hello");


.. _`Log - JavaDoc`: http://developer.android.com/reference/android/util/Log.html
.. _`Stripping Log out of production`: http://groups.google.com/group/android-developers/browse_thread/thread/f88b3556d150e1bd/b9747b4cc78565f1#b9747b4cc78565f1
