SMS
***

Send
====

Minimal
-------

`Minimal code to send a SMS from Google Android`_

- This code assumes you're in an Activity, which is where it gets ``this``:

  ::

    PendingIntent pendingIntent = PendingIntent.getBroadcast(this, 0, new Intent(), 0)
    SmsManager smsManager = SmsManager.getDefault();
    String receiver = "5556"; // the phone number of the device to send the SMS message to.
    String message = "This is the SMS message I want to sending";
    smsManager.sendTextMessage(receiver, null, message, pendingIntent, null);

  What it requires from this is actually just the interface to the ``Context``.

- Also, add the following to your ``AndroidManifest.xml`` file:

  ::

    <uses-permission android:name="android.permission.SEND_SMS"></uses-permission>

Application
-----------

`SMS Messaging in Android`_

To use the built in SMS application:

::

  Intent sendIntent = new Intent(Intent.ACTION_VIEW);
  sendIntent.putExtra("sms_body", "Content of the SMS goes here...");
  sendIntent.setType("vnd.android-dir/mms-sms");
  startActivity(sendIntent);

Try the following for the mobile number:

::

  intent.putExtra("address", recipient);


.. _`Minimal code to send a SMS from Google Android`: http://www.threaded.com/2009/02/sending-sms-from-google-android.html
.. _`SMS Messaging in Android`: http://mobiforge.com/developing/story/sms-messaging-android

